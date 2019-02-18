<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $this->_var['config']['site_name']; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo htmlspecialchars($this->_var['config']['site_keywords']); ?>" />
<meta name="description" content="<?php echo htmlspecialchars($this->_var['config']['site_description']); ?>" />
<LINK href="/templates/kele/img/reset.css" type=text/css rel=stylesheet>
<LINK href="/templates/kele/img/index_common.css" type=text/css rel=stylesheet>
<LINK href="/templates/kele/img/home.css" type=text/css rel=stylesheet>
<!--[if lte IE 6]>
<script src="/templates/kele/img/fixPNG.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('.pngfix');
</script>
<![endif]-->
<script type="text/javascript" src="scripts/jquery.js"></script>
<script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
<?php echo $this->fetch('index_header.html'); ?>
    
<DIV class="con clearfix">
  <DIV class=fl id=banner>
	<?php echo $this->fetch('part_game_slide.html'); ?>
  </DIV>
  <DIV class=fr id=uc_box>
	<?php echo $this->fetch('part_login.html'); ?>
  </DIV>
</DIV>

<DIV class="h_hot_game clearfix">
<?php echo $this->fetch('part_game_best.html'); ?>
</DIV>

<DIV class="con clearfix" style="ZOOM: 1">
  <DIV class="col1 fl">
    <DIV class="box zxkf">
      <H3><STRONG class=fl>最新开服</STRONG> </H3>
      <DIV class=margin>
        <?php echo $this->fetch('part_game_new.html'); ?>
      </DIV>
    </DIV>
    <DIV class="box cs">
      <DIV class=margin>
        <?php echo $this->fetch('part_service.html'); ?>
      </DIV>
    </DIV>
  </DIV>
  <DIV class="box yxtj fl">
    <H3><STRONG class=fl>火爆游戏</STRONG> <A class=fr title=更多 href="game.php">更多&gt;&gt;</A> </H3>
    <DIV class=margin>
    	<?php echo $this->fetch('part_game_hot.html'); ?>
    </DIV>
  </DIV>
  <DIV class="col2 fr clearfix">
    <DIV class="box latest_news">
      <H3><STRONG class=fl>游戏动态</STRONG> <A class=fr title=更多 href="news.php">更多&gt;&gt;</A> </H3>
      <DIV class=margin>
        <?php echo $this->fetch('part_news.html'); ?>
      </DIV>
    </DIV>
    <DIV class="box getgift clearfix">
      <DIV class=margin><A href="card.php"><IMG src="/templates/kele/img/getgift.png"></A> </DIV>
    </DIV>
  </DIV>
</DIV>
<?php echo $this->fetch('part_link.html'); ?>
<?php echo $this->fetch('footer.html'); ?>
</body>
</html>
