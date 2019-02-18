<DIV id=footer>
	<?php if ($this->_var['bottom_menu']): ?>
	<P>
	<?php $_from = $this->_var['bottom_menu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'menu_0_55811700_1550456813');$this->_foreach['bottom_menu'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['bottom_menu']['total'] > 0):
    foreach ($_from AS $this->_var['menu_0_55811700_1550456813']):
        $this->_foreach['bottom_menu']['iteration']++;
?>
  <a href="<?php echo $this->_var['menu_0_55811700_1550456813']['link']; ?>" <?php if ($this->_var['menu_0_55811700_1550456813']['target'] == 1): ?>target="_blank"<?php endif; ?>><?php echo $this->_var['menu_0_55811700_1550456813']['name']; ?></a>
  <?php if (! ($this->_foreach['bottom_menu']['iteration'] == $this->_foreach['bottom_menu']['total'])): ?>┊<?php endif; ?>
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  </P>
	<?php endif; ?>  
  <P>
  Copyright 2018-2020 XB Markets Game All rights reserved 
  </P>
</DIV>