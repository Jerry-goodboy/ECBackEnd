<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title>登录-管理员</title>
</head>
<body>
	<form>
		<label for="acc">管理员账号</label>
		<input type="text" name="account" id="acc" placeholder="请输入管理员账号"><br>
		<label for="pwd">密码</label>
		<input type="password" name="password" id="pwd" placeholder="请输入密码"><br>
		<label for="verify">验证码</label>
		<input type="text" name="verify" id="verify" placeholder="请输入验证码"><br>
		<img src="getVerify.php" alt="请刷新" id="imgVerify"><br>
		<input type="submit" name="sub" value="登录">
	</form>
</body>
</html>