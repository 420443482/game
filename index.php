<?php
require_once'includes/global.php';
require_once(ROOT_PATH.'languages/'.$config['site_language'].'/front.php');
//require_once(ROOT_PATH.'languages/taiwan/front.php');
require_once'includes/front.php';
//set_online(create_uri("index"));
$smarty=new smarty();smarty_header(true);
$cache_id = sprintf('%X', crc32(ROOT_PATH));
if (!$smarty->is_cached('index.html',$cache_id)){
	$smarty->assign('here',here('index'));
	$smarty->assign('login',get_login());
	$smarty->assign('game_focus',get_game_focus());
	$smarty->assign('game_best',get_game_best());
	$smarty->assign('game_hot',get_game_hot());
	$smarty->assign('game_new',get_game_new());
	$smarty->assign('news',get_news());
	$smarty->assign('link',get_link());
}
$smarty->display('index1.html',$cache_id);

function get_game_focus(){
    return game_array_list('game_is_focus=1',3);
}
function get_game_best(){
    return game_array_list('game_is_best=1',4);
}
function get_game_hot(){
    return game_array_list('game_is_hot=1',1);
}
function get_game_new(){
    return server_array_list('server_is_best=1',1);
}
function get_news(){
    return content_array_list(1,7);
}
function get_link(){
	$array=array();
	$res=$GLOBALS['db']->getall("SELECT * FROM ".$GLOBALS['db_prefix']."link WHERE link_state=1 ORDER BY link_sort ASC,link_id ASC");
	if($res){
		foreach($res as $row){
			$array[$row['link_id']]['id']=$row['link_id'];
			$array[$row['link_id']]['name']=$row['link_name'];
			$array[$row['link_id']]['logo']=$row['link_logo'];
			$array[$row['link_id']]['text']=$row['link_text'];
			$array[$row['link_id']]['url']=$row['link_url'];
		}
	}
	return $array;
}
?>