<?php
require_once('includes/global.php');
require_once(ROOT_PATH.'languages/'.$config['site_language'].'/front.php');
require_once('includes/front.php');

$action=isset($_GET['action'])?$_GET['action']:'';
$game_id=empty($_GET['game_id'])?0:intval($_GET['game_id']);
if($game_id>0){
	redirect('card.php?action=card_list&id='.$game_id);
	exit;
}

$smarty=new smarty();smarty_header();
$smarty->assign('login',get_login());
$smarty->assign('faq',content_array_list(2,5));

if($action=='card_list'){
	$game_id=empty($_GET['id'])?0:intval($_GET['id']);
	$game_name=empty($_GET['name'])?'':trim($_GET['name']);
	
    $res = $GLOBALS['db']->getall("SELECT  * FROM ".$GLOBALS['db_prefix']."card WHERE card_state=1 AND card_game_id=$game_id ORDER BY card_id DESC");
	$card_list=array();
    foreach($res as $row){
		$card_list[$row['card_id']]['id']=$row['card_id'];
		$card_list[$row['card_id']]['name']=$row['card_name'];
		$card_list[$row['card_id']]['link']=$row['card_link'];
		$card_list[$row['card_id']]['count']=get_card_count($row['card_id'],'');
		$card_list[$row['card_id']]['frees']=get_card_count($row['card_id'],'number_state=0');
	}
	
	$smarty->assign('game_name',$game_name);
	$smarty->assign('card_list',$card_list);
	$smarty->display('card_show.html');
	exit;
}
if($action=='get_card'){
	login_passed();
	$card_id=empty($_GET['id'])?0:intval($_GET['id']);
	$member_username=get_user('username');
	
	$count=$GLOBALS['db']->getcount("SELECT * FROM ".$GLOBALS['db_prefix']."card_number WHERE number_state=0 AND card_id=$card_id");
	if($count==0){
		message(array('text'=>'此卡已发放结束！','link'=>''));
	}
	$count=$GLOBALS['db']->getcount("SELECT * FROM ".$GLOBALS['db_prefix']."card_number WHERE card_id=$card_id AND number_get_user='$member_username'");
	if($count>0){
		message(array('text'=>'您已领取过此卡！','link'=>''));
	}
	
	$row=$GLOBALS['db']->getone("SELECT * FROM ".$GLOBALS['db_prefix']."card_number WHERE number_state=0 AND card_id=$card_id");
	if($row){
		$number_id=$row['number_id'];
		$card_number=$row['card_number'];
		
		$update=array();
		$update['number_state']=1;
		$update['number_get_time']=date("Y-m-d H:i:s");
		$update['number_get_user']=$member_username;
		$db->update($db_prefix."card_number",$update,"number_id=".$number_id);
		
		message(array('text'=>'恭喜您领取成功，请妥善保管！<br />卡号：<span class="cno">'.$card_number."</span>",'link'=>'','jump'=>'0'));
	}
	exit;
}

//card
$smarty->assign('game_list',game_array_list('',''));
$smarty->display('card.html');
?>