<DIV id=header>
  <DIV class=top>
    <IMG class=pngfix id=logo src="/templates/kele/img/logo.png">
    <UL class="q_nav fr">
      <LI>
        <P class=fl><A class="icon i_reg" title=Register href="en_reg.php">Register</A> <A class="icon i_log" title=LOGIN href="en_login.php">Login</A> <A class="icon i_pay" title="Account recharge" href="en_pay.php">recharge</A> </P>
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
    		<A class="spe" href="<?php if ($this->_var['menu']['link'] == '/'): ?>en_index.php<?php elseif ($this->_var['menu']['link'] == 'card.php'): ?>en_content.php?id=14<?php else: ?>en_<?php echo $this->_var['menu']['link']; ?><?php endif; ?>" <?php if ($this->_var['menu']['target'] == 1): ?>target="_blank"<?php endif; ?>><?php if ($this->_var['menu']['name'] == '首頁'): ?>Home<?php elseif ($this->_var['menu']['name'] == '遊戲中心'): ?>Game<?php elseif ($this->_var['menu']['name'] == '遊戲動態'): ?>News<?php elseif ($this->_var['menu']['name'] == '用戶中心'): ?>Center<?php elseif ($this->_var['menu']['name'] == '充值中心'): ?>Recharge<?php elseif ($this->_var['menu']['name'] == '新手禮包'): ?>About<?php endif; ?></A>
    	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    	<?php endif; ?>
    </LI>
    <LI class=s_msg>
      <P class="fl icon i_laba">Hello! If you encounter any problems in the game, you can consult our online customer service to help you solve it.</P>
      <P class=fr></P>
    </LI>
  </UL>
</DIV>
