<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>

<div class="main">
	${msg }
	<form action="/userResetPassword_wap.shtml" method="post" class="form">
		
		<cite><span><em>*</em>原密码：</span><input type="password" name="oldpassword" placeholder="请重新输入帐户密码"></cite>
		<cite>
			<span><em>*</em>新密码：</span>
			<input type="password" name="newpassword" placeholder="请输入积分商城帐户密码" class="checkstrong">
			<p class="checkstrong_box" >
				密码强度: <span class="checkstrong_res">
				<b>弱</b><b>中</b><b>强</b></span><br>
				<img src="/images/icon_warm.png" style="vertical-align: -2px;">为保证您帐号的安全，建议密码由6-16位字符（字母、数字、符号）组合而成，不能只使用一种字符，不区分大小写！
			</p>
		</cite>
		<cite><span><em>*</em>确认新密码：</span><input type="password" name="renewpassword" placeholder="请重新输入帐户密码"></cite>
		<input type="submit" value="修 改">
	</form>

</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>