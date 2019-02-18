<?php if ($this->_var['link']): ?>
<div class="box friendlink">
    <h3>
        <strong class="fl">友情链接</strong>
    </h3>
    <div class="margin">
        <ul class="clearfix">
            <li>
			<?php $_from = $this->_var['link']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'link_0_05310200_1550459801');if (count($_from)):
    foreach ($_from AS $this->_var['link_0_05310200_1550459801']):
?>
			<a href="<?php echo $this->_var['link_0_05310200_1550459801']['url']; ?>" target="_blank" title="<?php echo $this->_var['link_0_05310200_1550459801']['text']; ?>"><?php echo $this->_var['link_0_05310200_1550459801']['name']; ?></a>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</li>
        </ul>
    </div>
</div>
<?php endif; ?>
