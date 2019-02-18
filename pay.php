<?php
require_once('includes/global.php');
require_once(ROOT_PATH.'languages/'.$config['site_language'].'/front.php');
require_once('includes/front.php');

$action=isset($_GET['action'])?$_GET['action']:'';
if($action=='pay_ok'){
	check_request();
	$member_id=get_user('userid');
	$game_id=empty($_POST['game_id'])?0:intval($_POST['game_id']);
	$server_id=empty($_POST['server_id'])?0:intval($_POST['server_id']);
	$mode_id=empty($_POST['mode_id'])?0:intval($_POST['mode_id']);
	$money=empty($_POST['money'])?0:intval($_POST['money']);
	$game_user=empty($_POST['game_user'])?'':trim($_POST['game_user']);
	$game_user2=empty($_POST['game_user2'])?'':trim($_POST['game_user2']);
	$game_role=empty($_POST['game_role'])?'':trim($_POST['game_role']);
	$tel=empty($_POST['tel'])?'':trim($_POST['tel']);
	$order_no=str_replace("-","",date("Y-m-dH-i-s")).rand(1000,2000);
	
	if($game_id==0||$server_id==0){
		message(array('text'=>'選擇購買遊戲代幣的服務器！','link'=>''));
	}
	if($game_user==''||$game_user!=$game_user2){
		message(array('text'=>'代幣賬戶錯誤！','link'=>''));
	}
	
	$insert=array();
	$insert['pay_order_no']=$order_no;
	$insert['pay_type']=0;
	$insert['pay_mode_id']=$mode_id;
	$insert['pay_state']=0;
	$insert['pay_user']=$member_id;
	$insert['pay_tel']=$tel;
	$insert['pay_game_id']=$game_id;
	$insert['pay_server_id']=$server_id;
	$insert['pay_game_user']=$game_user;
	$insert['pay_game_role']=$game_role;
	$insert['pay_money']=$money;
	$insert['pay_time']=$_SERVER['REQUEST_TIME'];
	$insert['pay_ip']=get_ip();
	$db->insert($db_prefix."pay",$insert);
	$pay_id=$db->insert_id();
	
	//支付接口处理
	//require_once('hi_ports/pay_gateway.php');
	//pay_gateway($mode_id,$order_no,$money);
    //$date_1=lock_url($order_no.'|'.$money,'xpgame');
	
	message(array('text'=>'開始進入支付。。。','link'=>'http://pay.lushuihe.com.cn/index.php?txt='.$order_no.'&amount='.$money,'jump'=>'1'));

	}
if($action=='get_server'){
	$game_id=empty($_GET['game_id'])?0:intval($_GET['game_id']);
	$server_list=server_array_list('server_is_pay=1 and game_id='.$game_id,'');
	foreach($server_list as $server){
		echo '<option value="'.$server['server_id'].'">'.$server['server_name'].'</option>';
	}
	exit;
}
if($action=='get_gameinfo'){
	$game_id=empty($_GET['game_id'])?0:intval($_GET['game_id']);
	$name='YuanBao';
	$per=10;
	$role=0;
	
	$row=$GLOBALS['db']->getone("select game_money_name,game_money_per,game_pay_role from ".$GLOBALS['db_prefix']."game WHERE game_id=".$game_id);
	if($row){
		$name=$row['game_money_name'];
		$per=$row['game_money_per'];
		$role=$row['game_pay_role'];
	}
	echo '{"name":"'.$name.'","per":"'.$per.'","role":"'.$role.'"}';
	exit;
}

//pay_form
$smarty=new smarty();smarty_header(true);
$smarty->assign('login',get_login());
$smarty->assign('faq',content_array_list(2,5));
$smarty->assign('paymode_list',paymode_array_list());
$smarty->assign('game_list',game_array_list('',''));

$game_id=empty($_GET['game_id'])?0:intval($_GET['game_id']);
//$server_id=empty($_GET['server_id'])?0:intval($_GET['server_id']);
$smarty->assign('game_id',$game_id);
//$smarty->assign('server_id',$server_id);
$smarty->display('pay.html');
?>