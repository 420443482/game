<?php
require_once('includes/global.php');
require_once(ROOT_PATH.'languages/'.$config['site_language'].'/front.php');
require_once('includes/front.php');

$action=isset($_GET['action'])?$_GET['action']:'';
//play
if($action=='play'){
	login_passed();
	$game_id=empty($_GET['game_id'])?0:intval($_GET['game_id']);
	$server_id=empty($_GET['server_id'])?0:intval($_GET['server_id']);
	$extra=empty($_POST['extra'])?'':trim($_POST['extra']);
	
	if($game_id==0||$server_id==0){
		exit;
	}
	$server_info=get_server_info($server_id);
	if(!$server_info){
		message(array('text'=>'服务器不存在，请重新选择！','link'=>''));
	}
	if($server_info['server_state']==1){
		$trunon=$server_info['server_trunon_date']." ".$server_info['server_trunon_hour'].":00:00";
		if(strtotime($trunon)>time()){
			message(array('text'=>'服务器将在 <span style="color:red;">'.$trunon.'</span> 开启，请稍候！','link'=>''));
		}
		else{
			//开服状态
			$update=array();
			$update['server_state']=3;
			$db->update($db_prefix."server",$update,"server_id=$server_id");
		}
	}
	if($server_info['server_state']==2){
		message(array('text'=>'服务器维护中，请稍候！','link'=>''));
	}
	
	//member
	$member_id=get_user('userid');
	$member_username=get_user('username');
	
	//gamelog
	$count=$GLOBALS['db']->getcount("select * from ".$GLOBALS['db_prefix']."gamelog where log_user_id=$member_id and log_server_id=$server_id");
	if($count==0){
		$insert=array();
		$insert['log_user_id']=$member_id;
		$insert['log_game_id']=$game_id;
		$insert['log_server_id']=$server_id;
		$insert['log_server_name']=$server_info['server_name'];
		$insert['log_time']=time();
		$insert['log_ip']=get_ip();
		$db->insert($db_prefix."gamelog",$insert);
	}
	else{
		$update=array();
		$update['log_time']=time();
		$update['log_ip']=get_ip();
		$db->update($db_prefix."gamelog",$update,"log_user_id=$member_id and log_server_id=$server_id");
	}
	
	//游戏接口处理
	require_once('hi_ports/login_gateway.php');
	game_login_gateway($member_id,$member_username,$server_info,$extra);
	
	message(array('text'=>'开始进入游戏。。。','link'=>'','jump'=>'0'));
}

$smarty=new smarty();smarty_header(true);

//server_list
if($action=='server_list'){
	if (isset($_GET['game_id'])){
		$game_id=intval($_GET['game_id']);
	}else{
		exit();
	}
	
	$smarty->assign('login',get_login());
	$smarty->assign('faq',content_array_list(2,5));
	$smarty->assign('game_name',get_game_name($game_id));
	$smarty->assign('server_list',server_array_list('game_id='.$game_id,''));
	$smarty->display('en_server.html');
	exit;
}
//game_list
$cache_id = sprintf('%X', crc32(ROOT_PATH));
if (!$smarty->is_cached('en_game.html',$cache_id)){
	$smarty->assign('login',get_login());
	$smarty->assign('faq',content_array_list(2,5));
	$smarty->assign('game_list',game_array_list('',''));
}
$smarty->display('en_game.html',$cache_id);
?>