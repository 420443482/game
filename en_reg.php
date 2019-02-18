<?php
require_once('includes/global.php');
require_once(ROOT_PATH.'languages/'.$config['site_language'].'/front.php');
require_once('includes/front.php');

//อฦนใวþตภ
$sp=empty($_GET['sp'])?'':trim(addslashes($_GET['sp']));

$smarty=new smarty();smarty_header();
$smarty->assign('sp',$sp);
$smarty->display('en_reg.html');
?>