<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $this->_var['config']['site_name']; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo htmlspecialchars($this->_var['config']['site_keywords']); ?>" />
<meta name="description" content="<?php echo htmlspecialchars($this->_var['config']['site_description']); ?>" />
<LINK href="/templates/kele/img/reset.css" type=text/css rel=stylesheet>
<LINK href="/templates/kele/img/common.css" type=text/css rel=stylesheet>
<LINK href="/templates/kele/img/gamelist.css" type=text/css rel=stylesheet>
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
  <DIV class="left box game_center">
    <h3 class="gl"><strong class="fl pngfix hid">遊戲中心</strong></h3>
    <DIV class=margin>
          <div class="ser_list clearfix">
              <div class="recommend_list">
                  <p><strong><span id="lblGameTitle"><?php echo $this->_var['game_name']; ?></span>伺服器列表</strong></p>
              </div>
              <div class="ser_list_div">
                  <ul>
<?php $_from = $this->_var['server_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'server');if (count($_from)):
    foreach ($_from AS $this->_var['server']):
?>
<li class="state_0<?php echo $this->_var['server']['server_state']; ?>"><a href="game.php?action=play&game_id=<?php echo $this->_var['server']['game_id']; ?>&server_id=<?php echo $this->_var['server']['server_id']; ?>" target="_blank"><?php echo $this->_var['server']['server_name']; ?></a> <em>狀態</em> </li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                  </ul>
              </div>
          </div>
    </DIV>
  </DIV>
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
