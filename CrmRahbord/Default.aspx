<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CrmRahbord.Pages.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link href="../Styles/bootstrap.css" rel="stylesheet" />
	<link href="../Styles/font-awesome.css" rel="stylesheet" />
	<link href="../Styles/font-awesome.min.css" rel="stylesheet" />
	<link href="../Styles/bootstrap.min.css" rel="stylesheet" />
	<link href="../Styles/mainstyle.css" rel="stylesheet" />
	<link href="../Styles/Site.css" rel="stylesheet" />
	<script src="../Scripts/bootstrap.min.js"></script>
	<script src="../Scripts/bootstrap.js"></script>
	<script src="../Scripts/jquery-1.10.2.js"></script>
	<script src="../Scripts/jquery.validate.js"></script>
	<script src="../Scripts/jquery.validate-vsdoc.js"></script>
	<title>ورود به حساب کاربری</title>
</head>
<body style="margin:0px;padding:0px; background-color:#f9f9f9;" >
	<form id="form1" runat="server">
		
		<div class="col col-md-4" style="background-color: #353752; min-height: 100%; position: fixed;">
			<div style="text-align: center; margin-top: 20%;">
				<img style="height: 35%; width: 35%" src="../images/logo.png" />
				<p style="color: #A0A2B3; font-size: 14px;">نرم افزار جدید تجاری برای تمامی تیم های شما </p>
				<p style="color: #A0A2B3; font-size: 11px;">آماده استفاده، کاربری آسان، راه حلی مقرون به صرفه</p>
			</div>
			<div style="text-align: center; margin-top: 20%;">
				<img style="height: 65%; width: 65%" src="../images/all_products.svg" alt="Alternate Text" />
			</div>
		</div>


		<div class="col col-md-8">
			<div class=" whitebox_container">
				<div class="login-wrapper">
					<div class="loginslide">
						<div style="margin:10px 15px 15px 10px;text-align:right">
							<img style="height: 15%; width: 15%" src="../images/logo1.png" />
							<br />
							<span>به شما حساب کاربری اختصاص داده خواهد شد</span>
						</div>
						<div class="form_container">
							<ul class="field_inputlist">
								<li>
									<label>نام کـاربری</label>  
									<asp:TextBox ID="UserName" AutoCompleteType="Disabled" class="fields_inputlist error_underline" runat="server"></asp:TextBox>
									<ul class="error_list">
										<asp:RequiredFieldValidator ID="RequiredFieldValidator1"
											ControlToValidate="UserName"
											Display="Dynamic"
											ErrorMessage="نام کاربری را وارد کنید"
											runat="server" />
									</ul>
								</li>
								<li>
									<label>کلمه عبـور</label>
									<asp:TextBox ID="UserPass" class="fields_inputlist error_underline" runat="server" TextMode="Password"></asp:TextBox>
									<ul class="error_list">
										<asp:RequiredFieldValidator ID="RequiredFieldValidator2"
											ControlToValidate="UserPass"
											ErrorMessage="کلمه عبور را وارد کنید"
											runat="server" />
									</ul>
								</li>
								<li style="margin-bottom:20px;margin-top:5px">
									<asp:CheckBox ID="CheckBox_login" class="" runat="server" />
									<label style="color:#707070; font-weight:normal">به ياد سپردن </label>
									<a class="hide_in_mobile forgot_password">فـراموشی کلمه عبور</a>
								</li>
								<li>
									<asp:Button type="submit" class="btn btn-primary full_length" OnClick="loginbtn_click" ID="Button1" runat="server" Text="ورود" />
								<span class="policies left">با کلیک بر روی ورود شما با <a href="https://www.rahbord.org" target="_blank">ضوابط &amp; شرایط</a> و <a href="https://www.rahbord.org" target="_blank">خط و مشی </a>ما موافقت می کنید.</span>
								</li>
							</ul>
							<%--<div class="other_login">
								<div style="align-items:center">
									<span class="line"></span>
									<span class="other_login_text">یـا ورود بـا</span>
									<span class="line"></span>
								</div>
								<div>
									<ul class=" login_links ">
										<li class="login_icon">
											<img src="../images/google_logo.svg" />
										</li>
									</ul>
								</div>
							</div>--%>
						</div>
						<div class="">
							<asp:Label ID="lblError" CssClass="error_list" runat="server" Text=""></asp:Label>
						</div>
					</div>
				</div>
			</div>
			<p style="text-align:center"><span class="bottomline" >Copyright © Rahbord Inc. All Rights Reserved</span></p>
		</div>
			
	</form>
</body>
</html>
