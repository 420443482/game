<ul class="list">
<?php $_from = $this->_var['news']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'news_0_05202000_1550459801');if (count($_from)):
    foreach ($_from AS $this->_var['news_0_05202000_1550459801']):
?>
<li><a title="<?php echo $this->_var['news_0_05202000_1550459801']['content_title']; ?>" href="<?php echo $this->_var['news_0_05202000_1550459801']['url']; ?>"><?php echo $this->_var['news_0_05202000_1550459801']['content_title']; ?></a> </li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</ul>