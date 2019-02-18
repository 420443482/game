<h3><strong class="fl pngfix">Common problems</strong> <a title="More" href="en_news.php?id=2" class="fr">More&gt;&gt;</a></h3>
<DIV class=margin>
<ul class="list">
<?php $_from = $this->_var['faq']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'faq_0_60041000_1550456814');if (count($_from)):
    foreach ($_from AS $this->_var['faq_0_60041000_1550456814']):
?>
<li><a title="<?php echo $this->_var['faq_0_60041000_1550456814']['content_title_en']; ?>" href="en_<?php echo $this->_var['faq_0_60041000_1550456814']['url']; ?>"><?php echo $this->_var['faq_0_60041000_1550456814']['content_title_en']; ?></a> </li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</ul>
</DIV>
