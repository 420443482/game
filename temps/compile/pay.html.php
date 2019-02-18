<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $this->_var['config']['site_name']; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo htmlspecialchars($this->_var['config']['site_keywords']); ?>" />
<meta name="description" content="<?php echo htmlspecialchars($this->_var['config']['site_description']); ?>" />
<LINK href="/templates/kele/img/reset.css" type=text/css rel=stylesheet>
<LINK href="/templates/kele/img/common.css" type=text/css rel=stylesheet>
<LINK href="/templates/kele/img/pay.css" type=text/css rel=stylesheet>
<!--[if lte IE 6]>
<script src="/templates/kele/img/fixPNG.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('.pngfix');
</script>
<![endif]--> 
<script type="text/javascript" src="scripts/jquery.js"></script>
<script type="text/javascript">
var mode_id=0;
var mode_name="";
var mode_per=100;
var gold_name="元寶";
var gold_per=10;
</script>
</head>
<body>
<?php echo $this->fetch('header.html'); ?>
 
<DIV class="mainContent clearfix">
	<div class="left box uc">
		<h3>
			<strong class="fl icon_05">購買代幣</strong>
		</h3>
        <form id="pay_form" name="pay_form" method="post" action="?action=pay_ok" onsubmit="return check_form()">
		<div class="margin">
			<ul class="pay_nav fl">
			<?php $_from = $this->_var['paymode_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'paymode');if (count($_from)):
    foreach ($_from AS $this->_var['paymode']):
?>
				<li><a href="javascript:void(0);" onclick="setPaymode(<?php echo $this->_var['paymode']['mode_id']; ?>,'<?php echo $this->_var['paymode']['mode_name']; ?>',<?php echo $this->_var['paymode']['mode_money_per']; ?>)" id="mode<?php echo $this->_var['paymode']['mode_id']; ?>"><?php echo $this->_var['paymode']['mode_name']; ?></a> </li>
				<?php if ($this->_var['paymode']['mode_is_default'] == 1): ?>
					<script type="text/javascript">
						mode_id=<?php echo $this->_var['paymode']['mode_id']; ?>;
						mode_name='<?php echo $this->_var['paymode']['mode_name']; ?>';
						mode_per=<?php echo $this->_var['paymode']['mode_money_per']; ?>;
					</script>
				<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</ul>
			<div class="pay_main fr">
			  <div class="step1">
                    <div class="tip_t">
                    </div>
                    <div class="tip_b">
                        <h4>
							您當前選擇的是“<span id="mode_name" class="c_o"></span>”支付方式</h4>
							<input type="hidden" id="mode_id" name="mode_id" value="0" />
                        <p id="pay_type_content">
                            獲得遊戲幣比例為<span id="mode_per" class="c_o2"></span>（部分購買渠道需要手續費），建議您購買時填寫當前使用的手機號碼，以便在遇到問題時我們能及時與您溝通。</p>
                    </div>
              </div>
                <div class="step2">
                    <h4>
                        請選擇您要購買遊戲幣到哪裡</h4>
                    <div id="div_game" class="step2_div">
                        <p class="select_game">
                            <label>
                                選擇遊戲：</label>
                            <span class="select_b">
							<select id="game_id" name="game_id" onchange="changeGame(this.options[selectedIndex].value)" class="select_t">
                              <option value="0">請選擇遊戲</option>
							  <?php $_from = $this->_var['game_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'game');if (count($_from)):
    foreach ($_from AS $this->_var['game']):
?>
							  <option value="<?php echo $this->_var['game']['game_id']; ?>" <?php if ($this->_var['game_id'] == $this->_var['game']['game_id']): ?>selected<?php endif; ?>><?php echo $this->_var['game']['game_name']; ?></option>
							  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                            </select>
							</span>
							<span id="sp_game"></span>
                        </p>
						<p class="select_game">
                            <label>
                                選擇伺服器：</label>
                            <span class="select_b">
							<select id="server_id" name="server_id" class="select_t">
							  <option value="0">請選擇伺服器</option>
                            </select>
							</span>
							<span id="sp_server"></span>
						</p>
				  </div>
                </div>
                <div class="step3">
                    <h4>
                        請填寫並確認帳號資訊</h4>
                    <div class="step3_div">
                      <p>
                            <label for="">
                                選擇帳號：</label>
                            <input type="text" class="i" id="game_user" name="game_user" value="<?php echo $this->_var['login']['username']; ?>" onblur="check_user()">
                            <span id="sp_user"></span>
                        </p>
                        <p>
                            <label for="">
                                確認帳號：</label>
                            <input type="text" class="i" id="game_user2" name="game_user2" value="<?php echo $this->_var['login']['username']; ?>" onblur="check_user2()">
                            <span id="sp_user2"></span>
                        </p>
						<p id="for_role" style="display:none">
                            <label for="">
                                遊戲角色：</label>
                            <input type="text" class="i" id="game_role" name="game_role" value="" onblur="check_role()">
                            <span id="sp_role"></span>
                        </p>
                        <p>
                            <label for="">
                                手機號碼：</label>
                            <input type="text" class="i" id="tel" name="tel">
                        </p>
                    </div>
                </div>
                <div class="step4">
                    <h4>
                        請選擇金額</h4>
                    <div class="step4_div">
                        <p>
                            <label for="">
                                選擇購買金額：</label>
                            <select id="money" name="money" onchange="setGold(this.options[selectedIndex].value)">
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="30">30</option>
								<option value="40">40</option>
								<option value="50">50</option>
								<option value="100" selected="selected">100</option>
								<option value="150">150</option>
								<option value="200">200</option>
								<option value="250">250</option>
								<option value="300">300</option>
								<option value="500">500</option>
								<option value="800">800</option>
								<option value="1000">1000</option>
								<option value="1500">1500</option>
								<option value="2000">2000</option>
								<option value="3000">3000</option>
								<option value="5000">5000</option>
								<option value="10000">10000</option>
							</select>
                            <em>USD（美元）</em>
                        </p>
                        <p>
                            <label for="">獲得遊戲幣：</label>
                            <span id="gold_cnt">1000</span>
                            <em id="gold_str">元寶</em>
                        </p>
                    </div>
                    <p>
                        <input type="submit" class="next hid" id="btnPay" value="購買代幣">
                    </p>
                </div>
          </div>
		</div>
		</form>
	</div>
  <DIV class=sidebar>
    <DIV class="" id=uc_box>
      <?php echo $this->fetch('part_login.html'); ?>
    </DIV>
    <DIV class="box latest_news">
      <?php echo $this->fetch('part_faq.html'); ?>
    </DIV>
    <DIV class="box cs">
      <DIV class=margin>
      	<?php echo $this->fetch('part_service.html'); ?>
      </DIV>
    </DIV>
  </DIV>
</DIV>
<script type="text/javascript">
	//預設方式
	setPaymode(mode_id,mode_name,mode_per);
	
	//默認遊戲
	<?php if ($this->_var['game_id'] > 0): ?>
		changeGame(<?php echo $this->_var['game_id']; ?>);
	<?php endif; ?>

	function setPaymode(id,name,per){
		//樣式
		old_id=$("#mode_id")[0].value;
		if(old_id>0){
			$("#mode"+old_id).removeClass("current");
		}
		$("#mode"+id).addClass("current");
	
		$("#mode_id").val(id);
		$("#mode_name").html(name);
		$("#mode_per").html(per+'%');
		
		//gold
		mode_per=per;
		setGold($("#money")[0].value);
	}
	function setGold(money){
		gold=money*gold_per*(mode_per/100);
		$("#gold_cnt").html(gold);
		$("#gold_str").html(gold_name);
	}
	function changeGame(id){
		//伺服器列表
		getServer(id);
		
		//遊戲資訊
		$.ajax({
			url:'pay.php',
			data:"action=get_gameinfo&game_id="+id,
			type:'get',
			dataType:'json',
			success:function(result){
				//alert(result.name);
				if(result.role=='1'){
					$("#for_role").show();
				}else{
					$("#for_role").hide();
				}
				gold_name=result.name;
				gold_per=result.per;
				
				//gold
				setGold($("#money")[0].value);
			}
		});
	}
	function getServer(id){
		$.ajax({
			url:'pay.php',
			data:"action=get_server&game_id="+id,
			type:'get',
			dataType:'text',
			success:function(result){
				//alert(result);
				$("#server_id").empty();
				$("#server_id").append('<option value="0">請選擇伺服器</option>');
				$("#server_id").append(result);
			}
		});
	}

	//ajax
	function check_user(){
		var user=$("#game_user")[0].value;
		if(user==""){
			$("#sp_user").html("<em>*</em>請輸入遊戲帳號");
			return false;
		}
		$.ajax({
			type:"GET",
			url:"user.php?action=check_member_username&member_username="+encodeURI(user)+"&r="+Math.random(), dataType:"text",async:false,success:function (e){
			if (e==1) {
				$("#sp_user").html("");
			}else{
				$("#sp_user").html("<em>*</em>帳號不存在");
			}
		}});
	}
	function check_user2(){
		if($("#game_user")[0].value!=$("#game_user2")[0].value){
			$("#sp_user2").html("<em>*</em>兩次輸入帳號不一樣");
			return false;
		}
		$("#sp_user2").html("");
	}
	function check_role(){
		if($("#game_role")[0].value==""){
			$("#sp_role").html("<em>*</em>請輸入遊戲角色");
			return false;
		}
		$("#sp_role").html("");
	}
	function check_form(){
		if($("#game_id")[0].value==0){
			$("#sp_game").html("<em>*</em>請選擇遊戲");
			return false;
		}
		if($("#server_id")[0].value==0){
			$("#sp_server").html("<em>*</em>請選擇伺服器");
			return false;
		}
		if($("#game_user")[0].value==""){
			$("#sp_user").html("<em>*</em>請輸入帳號");
			return false;
		}
		if($("#game_user")[0].value!=$("#game_user2")[0].value){
			$("#sp_user2").html("<em>*</em>兩次充值帳號不一樣");
			return false;
		}
		return true;
	}
</script>
<?php echo $this->fetch('footer.html'); ?>
</body>
</html>