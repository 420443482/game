<?php
include 'yeepayCommon.php';	
$return = getCallBackValue($r0_Cmd,$r1_Code,$r2_TrxId,$r3_Amt,$r4_Cur,$r5_Pid,$r6_Order,$r7_Uid,$r8_MP,$r9_BType,$hmac);
$bRet = CheckHmac($r0_Cmd,$r1_Code,$r2_TrxId,$r3_Amt,$r4_Cur,$r5_Pid,$r6_Order,$r7_Uid,$r8_MP,$r9_BType,$hmac);

#У������ȷ
if($bRet){
	if($r1_Code=="1"){
		//��Ϸ��������
		require_once('/hi_ports/charge_gateway.php');
		game_charge_gateway($r6_Order);
		
		if($r9_BType=="1"){
			//echo "���׳ɹ�";
			//echo  "<br />����֧��ҳ�淵��";
		}elseif($r9_BType=="2"){
			echo "success";
			//echo "<br />���׳ɹ�";
			//echo  "<br />����֧������������";      			 
		}
	}
	$html="֧���ɹ�";
}else{
	echo "fail";
	$html="֧��ʧ��";
}
?>
<html>
<head>
<title>��ֵ����</title>
</head>
<body>
	<?php echo $html; ?>
</body>
</html>