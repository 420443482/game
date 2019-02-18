<?php
/**
 *游戏充值接口类
*/
function game_charge_gateway($order_no){
	$orderinfo=get_order_info($order_no);
	$modeinfo=get_paymode_info($orderinfo['mode_id']);
	$gameinfo=get_game_info($orderinfo['game_id']);
	$serverinfo=get_server_info($orderinfo['server_id']);
	
	//游戏币
	$money=$orderinfo['money'];
	$pay_per=$modeinfo['money_per'];
	$game_per=$gameinfo['game_money_per'];
	$gold=round($money*($pay_per/100)*$game_per);
	
	$username=$orderinfo['game_user'];
	$pay_url=$serverinfo['pay_gateway'];
	
	//充值接口
	$ret=0;
	switch ($gameinfo['game_no']){
	case 'LJ':
		$server_no=$serverinfo['server_no'];
		$ret=lj_charge($order_no,$money,$gold,$username,$server_no,$pay_url,$gameinfo);
		break;
	case 'SSSG':
		$ret=sssg_charge($order_no,$gold,$username,$pay_url,$gameinfo);
		break;
	case 'SXD':
		$domain=$serverinfo['login_gateway'];
		$ret=sxd_charge($order_no,$gold,$username,$domain,$pay_url,$gameinfo);
		break;
	}
	
	//更新订单
	if($ret==1){
		//success
		$update=array();
		$update['pay_state']=1;
		$db->update($db_prefix."pay",$update,"pay_order_no='".$order_no."'");
	}
}

//龙将
function lj_charge($order_no, $money, $gold, $username, $server_no, $pay_url, $config){
	$agent=$config['port_config1'];
	$key=$config['port_config3'];
	$money=$money*100;//单位分
	$coupon=0;
	$coin=0;
	
	$strKey=$order_no.$key;
	$sign=md5($strKey);
	
	//$charge_url
	$charge_url='http://'.$pay_url.'/pay/'.$agent.'/'.$server_no.'/by/username?name='.$username.'&money='.$money.'&gold='.$gold.'&coupon='.$coupon.'&coin='.$coin.'&order='.$order_no.'&sign='.$sign;
	
	//echo $charge_url;
	$ret=webclient($charge_url);
	if(strpos($ret,'0')){
		return 1;
	}
	else{
		return 0;
	}
}

//盛世三国
function sssg_charge($order_no, $gold, $username, $pay_url, $config){
	$key=$config['port_config2'];
	$time=time();
	
	$strKey=$username."_".$time."_".$order_no."_".$gold."_".$key;
	$sign=md5($strKey);
	
	//$charge_url
	$charge_url='http://'.$pay_url.'/api/charge?user='.$username.'&time='.$time.'&order='.$order_no.'&gold='.$gold.'&sign='.$sign;
	
	//echo $charge_url;
	$ret=webclient($charge_url);
	if($ret=='1'){
		return 1;
	}
	else{
		return 0;
	}
}

//神仙道
function sxd_charge($order_no, $gold, $username, $domain, $pay_url, $config){
	$key=$config['port_config2'];
	//$time=time();
	
	$strKey=$username."_".$gold."_".$order_no."_".$domain."_".$key;
	$sign=md5($strKey);
	
	//$charge_url
	$charge_url='http://'.$pay_url.'/api/buygold.php?user='.$username.'&gold='.$gold.'&order='.$order_no.'&domain='.$domain.'&sign='.$sign;
	
	//echo $charge_url;
	$ret=webclient($charge_url);
	if($ret=='1'){
		return 1;
	}
	else{
		return 0;
	}
}
?>