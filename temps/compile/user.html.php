<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $this->_var['config']['site_name']; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo htmlspecialchars($this->_var['config']['site_keywords']); ?>" />
<meta name="description" content="<?php echo htmlspecialchars($this->_var['config']['site_description']); ?>" />
<LINK href="/templates/kele/img/reset.css" type=text/css rel=stylesheet>
<LINK href="/templates/kele/img/common.css" type=text/css rel=stylesheet>
<LINK href="/templates/kele/img/main.css" type=text/css rel=stylesheet>
<!--[if lte IE 6]>
<script src="/templates/kele/img/fixPNG.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('.pngfix');
</script>
<![endif]--> 
<script type="text/javascript" src="scripts/jquery.js"></script>
</head>
<body>
<?php echo $this->fetch('header.html'); ?>
 
<DIV class="mainContent clearfix">
	<div class="left box uc">
		<h3>
			<strong class="fl icon_02">用戶中心</strong>
		</h3>
		<div class="margin">
			<div class="msg">
				<strong>為了您的帳戶安全，請完善您的安全設置。</strong>
			</div>
			<div class="uc_link">
				<dl>
					<dt class="d1">帳戶充值： </dt>
					<dd>
						<a href="pay.php">遊戲充值</a> <a href="user.php?action=paylog">充值記錄</a>
					</dd>
					<dt class="d2">安全中心： </dt>
					<dd>
						<a href="user.php?action=setpass" class="c_r">修改密碼</a> <a href="user.php?action=setsec">設置密保</a>
					</dd>
					<dt class="d3">資料設置： </dt>
					<dd>
						<a href="user.php?action=setuser">資料完善</a> <a href="user.php?action=setcer">防沉迷設置</a> <a href="user.php?action=card">我的新手卡</a>
					</dd>
				</dl>
			</div>
			<h4 class="played">
				<strong>最近玩過的遊戲：</strong></h4>
				<ul class="iplay clearfix">
					<?php $_from = $this->_var['gamelog']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'log');if (count($_from)):
    foreach ($_from AS $this->_var['log']):
?>
					<li>
						<a href="game.php?action=server_list&game_id=<?php echo $this->_var['log']['game_id']; ?>"><img src="uploads/<?php echo $this->_var['log']['game_logo']; ?>"></a>
						<div>
						<p class="p1"><strong><?php echo $this->_var['log']['server_name']; ?></strong></p>
						<p class="p2"><a href="game.php?action=play&game_id=<?php echo $this->_var['log']['game_id']; ?>&server_id=<?php echo $this->_var['log']['server_id']; ?>">進入遊戲</a></p>
						<a class="ipay" href="pay.php?game_id=<?php echo $this->_var['log']['game_id']; ?>">充值</a>
						</div>
					</li>
					<?php endforeach; else: ?>
					<li class="noyet">您當前還未玩過遊戲，您可以在<a href="game.php">遊戲中心</a>挑選自己喜歡的遊戲！</li>
					<?php endif; unset($_from); ?><?php $this->pop_vars();; ?>
				</ul>
			<!--
			<h4 class="liked">
				<strong>猜您可能會喜歡：</strong></h4>
				<ul class="ilike">
					<li></li>
				</ul>
			-->
		</div>
	</div>
  <DIV class=sidebar>
    <DIV class="" id=uc_box>
      <?php echo $this->fetch('part_login.html'); ?>
    </DIV>
    <DIV class="box latest_news">
      <?php echo $this->fetch('part_faq.html'); ?>
    </DIV>
    <DIV class="box cs">
      <DIV class=margin>
      	<?php echo $this->fetch('part_service.html'); ?>
      </DIV>
    </DIV>
  </DIV>
</DIV>

<?php echo $this->fetch('footer.html'); ?>
</body>
</html>
