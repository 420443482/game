<?php $_from = $this->_var['game_new']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'game_0_04966700_1550459801');if (count($_from)):
    foreach ($_from AS $this->_var['game_0_04966700_1550459801']):
?>
<div class="zxkf_div"><img class="fl" src="uploads/<?php echo $this->_var['game_0_04966700_1550459801']['server_logo']; ?>">
  <p class="fl"><a class="btn_green" title="進入遊戲" href="game.php?action=server_list&game_id=<?php echo $this->_var['game_0_04966700_1550459801']['game_id']; ?>">進入遊戲</a>
  <a class="btn_gray" title="領取禮包" href="card.php?game_id=<?php echo $this->_var['game_0_04966700_1550459801']['game_id']; ?>">領取禮包</a></p>
</div>
<div class="intro"><strong><?php echo $this->_var['game_0_04966700_1550459801']['server_name']; ?> <?php echo $this->_var['game_0_04966700_1550459801']['server_trunon_date']; ?> <?php echo $this->_var['game_0_04966700_1550459801']['server_trunon_hour']; ?>點</strong>
<p><?php echo $this->_var['game_0_04966700_1550459801']['server_depict']; ?></p>
</div>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
