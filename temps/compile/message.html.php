<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="UTF-8">
<head>
<title>系統提示-System hints</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="/templates/kele/img/reset.css">
<link rel="stylesheet" type="text/css" href="/templates/kele/img/popup.css">
</head>
<body>
<div class="pop2">
    <h3><strong>系統提示-System hints</strong></h3>
    <div class="pop_c">
        <div class="tip t03">
            <h4><?php echo $this->_var['message']['text']; ?></h4>
            <a href="javascript:void(0);" onclick="jump(0);return false;" class="btn">返回-back</a>
        </div>
	</div>
</div>

<script type="text/javascript">
function jump(ts) {
	<?php if ($this->_var['message']['link'] == ''): ?>
	window.setTimeout(function(){history.go(-1)},ts);
	<?php else: ?>
	window.setTimeout(function(){location.href='<?php echo $this->_var['message']['link']; ?>';},ts);
	<?php endif; ?>
}

<?php if ($this->_var['message']['jump'] == '0'): ?>
	//return false;
<?php else: ?>
	//自動跳轉
	jump(2000);
<?php endif; ?>
</script>
</body>
</html>
