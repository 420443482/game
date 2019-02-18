<?php $_from = $this->_var['game_best']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'game_0_04867500_1550459801');if (count($_from)):
    foreach ($_from AS $this->_var['game_0_04867500_1550459801']):
?>
<div class="h_hot_div">
  <a href="game.php?action=server_list&game_id=<?php echo $this->_var['game_0_04867500_1550459801']['game_id']; ?>"><img class="pngfix" src="uploads/<?php echo $this->_var['game_0_04867500_1550459801']['game_logo3']; ?>"></a>
  <p>
      <a title="代幣" href="pay.php?game_id=<?php echo $this->_var['game_0_04867500_1550459801']['game_id']; ?>" target="_blank">代幣</a>
      <a title="新手卡" href="card.php?game_id=<?php echo $this->_var['game_0_04867500_1550459801']['game_id']; ?>">新手卡</a>
      <a class="a3" title="進入遊戲" href="game.php?action=server_list&game_id=<?php echo $this->_var['game_0_04867500_1550459801']['game_id']; ?>">進入遊戲</a>
  </p>
</div>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
