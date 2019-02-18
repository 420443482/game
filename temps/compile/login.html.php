<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
		<title><?php echo $this->_var['config']['site_name']; ?></title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <LINK href="/templates/kele/img/reset.css" type=text/css rel=stylesheet>
    <LINK href="/templates/kele/img/common.css" type=text/css rel=stylesheet>
    <LINK href="/templates/kele/img/main.css" type=text/css rel=stylesheet>
    <LINK href="/templates/kele/img/login.css" type=text/css rel=stylesheet>
    <!--[if lte IE 6]>
    <script src="/templates/kele/img/fixPNG.js"></script>
    <script type="text/javascript">
    DD_belatedPNG.fix('.pngfix');
    </script>
    <![endif]--> 
<script type="text/javascript" src="scripts/jquery.js"></script>
<script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
    <?php echo $this->fetch('header.html'); ?>
    <div class="mainContent clearfix">
        <div class="box reg" id="div_reg">
            <h3>
                <strong class="fl pngfix">用戶中心</strong>
            </h3>
            <div class="margin">
                <form id="login_form" name="login_form" method="post" action="user.php?action=login_ok">
				<div class="login">
                    <div class="port">
                        <div class="i">
                            <label class="fl">
                                用戶名：</label>
                            <p class="fl">
                                <input id="member_username" name="member_username" type="text" class="pi_input1" />
                            </p>
                        </div>
                        <div class="i">
                            <label class="fl">
                                密&nbsp;&nbsp;碼：</label>
                            <p class="fl">
                                <input id="member_password" name="member_password" type="password" class="pi_input1" />
                            </p>
                        </div>

						<div class="i2">
							<label class="fl">
								驗證碼：</label>
							<p class="fl">
								<input id="authcode" name="authcode" type="text" class="pi_input2" />
								<img src="authcode.php" alt="" align="absmiddle" onclick="this.src+='?'+Math.random()"/>
							</p>
						</div>

                        <div class="btnLogin">
                            <input id="login_submit" type="button" value="" class="hid cur" />
                        </div>
                        <div class="btnReg">
                            <a class="hid" href="reg.php">立即註冊</a>
                        </div>
                    </div>
                </div>
				</form>
            </div>
        </div>
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
		
		/*$.ajax({
			type:"GET",
			url:"user.php?action=login_ok&member_username="+encodeURI(member_username)+"&member_password="+encodeURI(member_password)+"&r="+Math.random(), 
			dataType:"text",
			async:false,
			success:function(e){
				if(e=='error:username_is_empty'){
					alert('<?php echo $this->_var['language']['username_is_empty']; ?>');
					return false;
				}else if(e=='error:password_is_empty'){
					alert('<?php echo $this->_var['language']['password_is_empty']; ?>');
					return false;
				}else if(e=='error:account_is_not_activate'){
					alert('<?php echo $this->_var['language']['account_is_not_activate']; ?>');
					return false;
				}else if(e=='error:account_is_lock'){
					alert('<?php echo $this->_var['language']['account_is_lock']; ?>');
					return false;
				}else if(e=='error:login_failed'){
					alert('<?php echo $this->_var['language']['login_failed']; ?>');
					return false;
				}
			}
		});*/
	};
	$("#login_submit").click(function(){
		logins();
	});
</script>
    <?php echo $this->fetch('footer.html'); ?>
</body>
</html>
