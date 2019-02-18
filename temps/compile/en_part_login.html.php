<div id="Tab1">
  <form id="login_form" name="login_form" method="post" action="user.php?action=login_ok">
  <DIV class=login_b>
  <H3 class=hid>User login</H3>
  <DIV class="i clearfix">
    <LABEL class=fl for=txtUserName>Username：</LABEL>
    <P class=fl>
      <input id="member_username" name="member_username" type="text" />
    </P>
  </DIV>
  <DIV class="i clearfix">
    <LABEL class=fl for=txtPwd>Password：</LABEL>
    <P class=fl>
      <input id="member_password" name="member_password" type="password" />
    </P>
  </DIV>
  <DIV class=b>
	<input id="login_submit" type="button" value="" class="hid cur" />
	<input name="post_mode" type="hidden" value="withtml5">
    <P>
      <input id="keeplive" type="checkbox" value="" checked="checked">
      <LABEL for=keeplive>Remember account</LABEL>
      <A title="Retrieve the password" href="en_user.php?action=forget">Retrieve the password</A> </P>
  </DIV>
  <DIV class=b2><A class=hid href="en_reg.php">Register</A></DIV>
  </DIV>
  </form>
</div>
<script type="text/javascript">
	var logins=function(){
		var member_username=$('#member_username').val();
		var member_password=$('#member_password').val();
		if ($.trim(member_username)==''){
			alert('<?php echo $this->_var['language']['username_is_empty']; ?>');
			return false;
		}
		if ($.trim(member_password)==''){
			alert('<?php echo $this->_var['language']['password_is_empty']; ?>');
			return false;
		}
		if (member_password.length<6&&member_password.length>20){
			alert('<?php echo $this->_var['language']['member_password_text']; ?>');
			return false;
		}
		
		$("#login_form").submit();
	};
	$("#login_submit").click(function(){
		logins();
	});
</script>
<div id="Tab2" style="display:none;">
<div class="login_a">
    <h3 class="hid">User login</h3>
    <div class="info">
        <img alt="avata" src="/templates/kele/img/avata.jpg">
        <dl>
            <dt><strong>Welcome to the game platform!</strong></dt>
                <dd class="u_name"><?php echo $this->_var['login']['username']; ?></dd>
        </dl>
    </div>
    <div class="b t_c">
        <a title="Game center" href="en_game.php">Game</a>
        <a title="User center" href="en_user.php">center</a>
        <a title="recharge" href="en_pay.php">Recharge</a>
        <a title="Receive gifts" href="en_user.php?action=card" >MYGifts</a>
    </div>
    <div class="b2 t_c">
        <a title="safe out" href="en_user.php?action=logout">Safe out</a>
    </div>
</div>
</div>
<script type="text/javascript">
var login_state=<?php 
$k = array (
  'name' => 'get_login_state',
);
echo $this->_hash . $k['name'] . '|' . serialize($k) . $this->_hash;
?>;
if(login_state==1){
	$("#Tab1").hide();
	$("#Tab2").show();
}
</script>
