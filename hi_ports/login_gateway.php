<?php
/**
 *游戏登陆接口类
*/
function game_login_gateway($userid, $username, $serverinfo, $extra){
	//游戏信息
	$gameinfo=get_game_info($serverinfo['game_id']);
	$login_url=$serverinfo['login_gateway'];
	
	//登陆接口
	switch ($gameinfo['game_no']){
	case 'LJ':
		$server_no=$serverinfo['server_no'];
		lj_login($username,$server_no,$login_url,$gameinfo);
		break;
	case 'SSSG':
		sssg_login($username,$login_url,$extra,$gameinfo);
		break;
	case 'SXD':
		sxd_login($username,$login_url,$gameinfo);
		break;
	}
}

//龙将
function lj_login($username, $server_no, $login_url, $config){
	$agent=$config['port_config1'];
	$key=$config['port_config2'];
	$username=strtolower($username);
	$time=time();
	$isAdult=1;
	
	$strKey=$username.$time.$key;
	$flag=md5($strKey);
	
	//$game_url
	$game_url='http://'.$login_url.'/login.php?username='.$username.'&agent='.$agent.'&server='.$server_no.'&time='.$time.'&isAdult='.$isAdult.'&flag='.$flag;
	
	//echo $game_url;
	redirect($game_url);
}

//盛世三国
function sssg_login($username, $login_url, $extra, $config){
	$client='web';
	if(!empty($extra)){
		$client=$extra;
	}
	
	$key=$config['port_config1'];
	$time=time();
	
	$strKey=$username."_".$time."_".$key;
	$sign=md5($strKey);
	
	//$game_url
	$game_url='http://'.$login_url.'/api/login?user='.$username.'&time='.$time.'&sign='.$sign.'&client='.$client.'&nickname='.$username.'&fangchenmi=0';
	
	//echo $game_url;
	redirect($game_url);
}

//神仙道
function sxd_login($username, $login_url, $config){
	$key=$config['port_config1'];
	$time=time();
	
	$strKey=$username."_".$time."_".$key;
	$hash=md5($strKey);
	
	//$game_url
	$game_url='http://'.$login_url.'/login_api.php?user='.$username.'&time='.$time.'&hash='.$hash;
	
	//echo $game_url;
	redirect($game_url);
}
?>