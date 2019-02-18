<DIV id=header>
  <DIV class=top>
    <IMG class=pngfix id=logo src="/templates/kele/img/logo.png">
    <UL class="q_nav fr">
      <LI>
        <P class=fl><A class="icon i_reg" title=註冊 href="reg.php">註冊</A> <A class="icon i_log" title=登錄 href="login.php">登錄</A> <A class="icon i_pay" title=購買代幣 href="pay.php">購買代幣</A> </P>
        <P class=fr><A title=中文繁體 href="/">中文繁體</A>| <A title=ENGLISH href="en_index.php">ENGLISH</A></P>
      </LI>
    </UL>
  </DIV>
  <UL id=nav>
    <LI class=menu>
    	<?php if ($this->_var['top_menu']): ?>
    	<?php $_from = $this->_var['top_menu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'menu');if (count($_from)):
    foreach ($_from AS $this->_var['menu']):
?>
    		<A class="spe" href="<?php echo $this->_var['menu']['link']; ?>" <?php if ($this->_var['menu']['target'] == 1): ?>target="_blank"<?php endif; ?>><?php echo $this->_var['menu']['name']; ?></A>
    	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    	<?php endif; ?>
    </LI>
    <LI class=s_msg style="display:none">
      <P class="fl icon i_laba">您好！如果您在遊戲過程中遇到任何問題，可以諮詢我們的線上客服幫您解決。</P>
      <P class=fr></P>
    </LI>
  </UL>
</DIV>

<div id="lunbo" style="z-index:-99;margin-top:-90px">
<link rel="stylesheet" type="text/css" href="templates/kele/css/demo-style.css">
<script type="text/javascript" src="templates/kele/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="templates/kele/js/banner.js"></script>

		<div id="xc" class="containerflash " style="z-index:-1">
		<div id="featured"> 	
<img src="templates/kele/images/q1.jpg"  style="z-index: 1; display: none;">
<img src="templates/kele/images/q2.jpg"  style="z-index: 2; display: none;">
<img src="templates/kele/images/q3.jpg"  style="z-index: 3; display: block;">
				  <div class="num">
                            <p class="lc"></p>
                            <p class="mc" id="numinner"><span class=""></span><span class=""></span><span class="on"></span>   </p>
                            <p class="rc"></p>
          </div>
		  </div>
	</div>
</div>
<div id="main_index" style="margin-top:-200px; z-index:999">
