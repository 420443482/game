<h3><strong class="fl pngfix">常見問題</strong> <a title="更多" href="news.php?id=2" class="fr">更多&gt;&gt;</a></h3>
<DIV class=margin>
<ul class="list">
<?php $_from = $this->_var['faq']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'faq_0_55767700_1550456813');if (count($_from)):
    foreach ($_from AS $this->_var['faq_0_55767700_1550456813']):
?>
<li><a title="<?php echo $this->_var['faq_0_55767700_1550456813']['content_title']; ?>" href="<?php echo $this->_var['faq_0_55767700_1550456813']['url']; ?>"><?php echo $this->_var['faq_0_55767700_1550456813']['content_title']; ?></a> </li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</ul>
</DIV>
