<?php
/**
 *支付接口处理类
*/
function pay_gateway($mode_id, $order_no, $money){
	//debug
	/*if(true){
		require_once('charge_gateway.php');
		game_charge_gateway($order_no);
		exit;
	}*/
	
	//支付方式
	$modeinfo=get_paymode_info($mode_id);
	
	//支付接口
	switch ($modeinfo['no'])
	{
	case 'ALIPAY':
		alipay($order_no,$money,$modeinfo);
		break;
	case 'YEEPAY':
		$frpid='';
		yeepay($order_no,$money,$frpid,$modeinfo);
		break;
	case 'SNDACARD':
		$frpid='SNDACARD-NET';
		yeepay($order_no,$money,$frpid,$modeinfo);
		break;
	case 'ZHENGTU':
		$frpid='ZHENGTU-NET';
		yeepay($order_no,$money,$frpid,$modeinfo);
		break;
	case 'SZX':
		$frpid='SZX-NET';
		yeepay($order_no,$money,$frpid,$modeinfo);
		break;
	case 'UNICOM':
		$frpid='UNICOM-NET';
		yeepay($order_no,$money,$frpid,$modeinfo);
		break;
	case 'TELECOM':
		$frpid='TELECOM-NET';
		yeepay($order_no,$money,$frpid,$modeinfo);
		break;
	}
}

//支付宝
function alipay($order_no, $money, $config){
	$aliapy_config['partner']      = $config['port_config1'];
	$aliapy_config['key']          = $config['port_config2'];
	$aliapy_config['seller_email'] = $config['port_config3'];
	$aliapy_config['return_url']   = $config['port_config4'];
	$aliapy_config['notify_url']   = $config['port_config5'];
	$aliapy_config['sign_type']    = 'MD5';
	$aliapy_config['input_charset']= 'utf-8';
	$aliapy_config['transport']    = 'http';
	#使用后台配置，不需要配置文件。
	#require_once("/pay/alipay/alipay.config.php");
	require_once("/pay/alipay/alipay_service.class.php");
	
	$out_trade_no = $order_no;
	$total_fee    = $money;
	$subject      = "GAME";
	$body         = "";
	$paymethod    = "";
	$defaultbank  = "";
	$anti_phishing_key  = time();
	$exter_invoke_ip = "";
	$show_url			= "";
	$extra_common_param = "";
	$royalty_type		= "";
	$royalty_parameters	= "";

	//构造要请求的参数数组
	$parameter = array(
			"service"			=> "create_direct_pay_by_user",
			"payment_type"		=> "1",
			"partner"			=> trim($aliapy_config['partner']),
			"_input_charset"	=> trim(strtolower($aliapy_config['input_charset'])),
			"seller_email"		=> trim($aliapy_config['seller_email']),
			"return_url"		=> trim($aliapy_config['return_url']),
			"notify_url"		=> trim($aliapy_config['notify_url']),
			"out_trade_no"		=> $out_trade_no,
			"subject"			=> $subject,
			"body"				=> $body,
			"total_fee"			=> $total_fee,
			"paymethod"			=> $paymethod,
			"defaultbank"		=> $defaultbank,
			"anti_phishing_key"	=> $anti_phishing_key,
			"exter_invoke_ip"	=> $exter_invoke_ip,
			"show_url"			=> $show_url,
			"extra_common_param"=> $extra_common_param,
			"royalty_type"		=> $royalty_type,
			"royalty_parameters"=> $royalty_parameters
	);
	
	//构造即时到帐接口
	$alipayService = new AlipayService($aliapy_config);
	$html_text = $alipayService->create_direct_pay_by_user($parameter);
	echo $html_text;
	exit;
}

//易宝
function yeepay($order_no, $money, $frpid, $config){
	#使用统一配置文件merchantProperties.php，支持多种充值渠道。
	#$p1_MerId		= $config['port_config1'];
	#$merchantKey	= $config['port_config2'];
	#$callbackUrl	= $config['port_config3'];
	#$logName		= "YeePay_HTML.log";
	require_once("/pay/yeepay/yeepayCommon.php");
	
	$p2_Order		= $order_no;
	$p3_Amt			= $money;
	$p4_Cur			= "CNY";
	$p5_Pid			= "GAME";
	$p6_Pcat		= "";
	$p7_Pdesc		= "";
	$p8_Url			= $callbackUrl;
	$pa_MP			= "";
	$pd_FrpId		= $frpid;
	$pr_NeedResponse= "1";
	
	//调用签名函数生成签名串
	$hmac = getReqHmacString($p2_Order,$p3_Amt,$p4_Cur,$p5_Pid,$p6_Pcat,$p7_Pdesc,$p8_Url,$pa_MP,$pd_FrpId,$pr_NeedResponse);
	$html_text = '';
	$html_text.='<html>';
	$html_text.='<head><title>YeePay</title></head>';
	$html_text.='<body onLoad="document.yeepay.submit();">';
	$html_text.='<form name="yeepay" action="'.$reqURL_onLine.'" method="post">';
	$html_text.='<input type="hidden" name="p0_Cmd" value="'.$p0_Cmd.'">';
	$html_text.='<input type="hidden" name="p1_MerId" value="'.$p1_MerId.'">';
	$html_text.='<input type="hidden" name="p2_Order" value="'.$p2_Order.'">';
	$html_text.='<input type="hidden" name="p3_Amt" value="'.$p3_Amt.'">';
	$html_text.='<input type="hidden" name="p4_Cur" value="'.$p4_Cur.'">';
	$html_text.='<input type="hidden" name="p5_Pid" value="'.$p5_Pid.'">';
	$html_text.='<input type="hidden" name="p6_Pcat" value="'.$p6_Pcat.'">';
	$html_text.='<input type="hidden" name="p7_Pdesc" value="'.$p7_Pdesc.'">';
	$html_text.='<input type="hidden" name="p8_Url" value="'.$p8_Url.'">';
	$html_text.='<input type="hidden" name="p9_SAF" value="'.$p9_SAF.'">';
	$html_text.='<input type="hidden" name="pa_MP" value="'.$pa_MP.'">';
	$html_text.='<input type="hidden" name="pd_FrpId" value="'.$pd_FrpId.'">';
	$html_text.='<input type="hidden" name="pr_NeedResponse" value="'.$pr_NeedResponse.'">';
	$html_text.='<input type="hidden" name="hmac" value="'.$hmac.'">';
	$html_text.='</form>';
	$html_text.='</body>';
	$html_text.='</html>';
	echo $html_text;
	exit;
}
?>