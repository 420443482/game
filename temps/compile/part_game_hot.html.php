<?php $_from = $this->_var['game_hot']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'game_0_05107200_1550459801');if (count($_from)):
    foreach ($_from AS $this->_var['game_0_05107200_1550459801']):
?>
<div class="g_link clearfix">
    <a href="game.php?action=server_list&game_id=<?php echo $this->_var['game_0_05107200_1550459801']['game_id']; ?>"><img src="uploads/<?php echo $this->_var['game_0_05107200_1550459801']['game_logo4']; ?>" class="fl"></a>
    <p class="fl">
        <a target="_blank" title="進入遊戲" href="game.php?action=server_list&game_id=<?php echo $this->_var['game_0_05107200_1550459801']['game_id']; ?>">進入遊戲</a>
        <a target="_blank" title="購買代幣" href="pay.php?game_id=<?php echo $this->_var['game_0_05107200_1550459801']['game_id']; ?>">購買代幣</a>
        <a title="領取禮包" href="card.php?game_id=<?php echo $this->_var['game_0_05107200_1550459801']['game_id']; ?>">領取禮包</a>
        <a title="進入遊戲" href="game.php?action=server_list&game_id=<?php echo $this->_var['game_0_05107200_1550459801']['game_id']; ?>" class="l4"><span>進入遊戲</span></a>
    </p>
</div>
<div class="g_intro clearfix">
    <p><?php echo $this->_var['game_0_05107200_1550459801']['game_depict']; ?></p>
</div>
<div class="g_snap">
    <h5><strong>遊戲截圖</strong></h5>
    <ul>
        <li>
            <img src="uploads/<?php echo $this->_var['game_0_05107200_1550459801']['game_logo6']; ?>">
        </li>
         <li>
            <img src="uploads/<?php echo $this->_var['game_0_05107200_1550459801']['game_logo7']; ?>">
        </li>
        <li>
            <img src="uploads/<?php echo $this->_var['game_0_05107200_1550459801']['game_logo8']; ?>">
        </li>
        <li>
            <img src="uploads/<?php echo $this->_var['game_0_05107200_1550459801']['game_logo9']; ?>">
        </li>
    </ul>
</div>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
