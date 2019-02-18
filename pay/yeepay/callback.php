<?php
include 'yeepayCommon.php';	
$return = getCallBackValue($r0_Cmd,$r1_Code,$r2_TrxId,$r3_Amt,$r4_Cur,$r5_Pid,$r6_Order,$r7_Uid,$r8_MP,$r9_BType,$hmac);
$bRet = CheckHmac($r0_Cmd,$r1_Code,$r2_TrxId,$r3_Amt,$r4_Cur,$r5_Pid,$r6_Order,$r7_Uid,$r8_MP,$r9_BType,$hmac);

#校验码正确
if($bRet){
	if($r1_Code=="1"){
		//游戏订单处理
		require_once('/hi_ports/charge_gateway.php');
		game_charge_gateway($r6_Order);
		
		if($r9_BType=="1"){
			//echo "交易成功";
			//echo  "<br />在线支付页面返回";
		}elseif($r9_BType=="2"){
			echo "success";
			//echo "<br />交易成功";
			//echo  "<br />在线支付服务器返回";      			 
		}
	}
	$html="支付成功";
}else{
	echo "fail";
	$html="支付失败";
}
?>
<html>
<head>
<title>充值中心</title>
</head>
<body>
	<?php echo $html; ?>
</body>
</html>