<div id="imgShow" class="margin">
  <div class="banner_t">
      <ul>
	  <?php $_from = $this->_var['game_focus']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'game');if (count($_from)):
    foreach ($_from AS $this->_var['game']):
?>
          <li><a href="game.php?action=server_list&game_id=<?php echo $this->_var['game']['game_id']; ?>"><img src="uploads/<?php echo $this->_var['game']['game_logo2']; ?>"></a></li>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	  </ul>
  </div>
  <div class="banner_b">
    <ul class="clearfix">
	   <?php $_from = $this->_var['game_focus']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'game');if (count($_from)):
    foreach ($_from AS $this->_var['game']):
?>
	   <li onclick="showImg(<?php echo $this->_var['game']['i']; ?>);" class="">
          <a href="javascript:void(0);">
            <img src="uploads/<?php echo $this->_var['game']['game_logo5']; ?>" width="64" height="33">
          </a>
          <div>
            <strong><?php echo $this->_var['game']['game_name']; ?></strong>
            <a href="game.php?action=server_list&game_id=<?php echo $this->_var['game']['game_id']; ?>"><span>新服開啟</span></a>
            <a href="pay.php?action=server_list&game_id=<?php echo $this->_var['game']['game_id']; ?>" target="_blank">購買代幣</a>
            <a href="card.php?game_id=<?php echo $this->_var['game']['game_id']; ?>" target="_blank">新手卡</a>
          </div>
       </li>
	   <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </ul>
  </div>
</div>
<script type="text/javascript" src="/templates/kele/img/filmslide.js"></script>
