// JavaScript Document
<!--用户协议的隐藏/展开-->
function openDialog(xiyi ) {
	if(document.getElementById('xieyi').style.display == "block"){
		document.getElementById('xieyi').style.display = "none";
	}
	else{
		document.getElementById('xieyi').style.display = "block";
		}
}
<!--判断输入是否正确的提示-->
function checkFormUsername(){
	<!--用户名验证-->
	var Username = document.getElementById('TxtUsername').value;
	var x = document.getElementById('Username1').className;
	if(Username==null||Username.length==0){
		document.getElementById('Username1').innerHTML="<img src='images/register/Red.jpg' width='10' height='10' />用户名不能为空";
		document.getElementById('Username1').className="Red";
		document.getElementById('TxtUsername').value="会员名/邮箱/手机";
		document.getElementById('TxtUsername').className="huise6c";
		}
	if(Username.length>0&&Username.length<6||Username.length>20){
		document.getElementById('Username1').innerHTML="<img src='images/register/Red.jpg' width='10' height='10' />用户名为6-20字符，一个个汉字为2字符。可包括中英文、数字。"
	document.getElementById('Username1').className="Red";}
	if(Username.length>=6&&Username.length<=20){
		document.getElementById('Username1').innerHTML="<img src='images/register/Green.jpg' width='10' height='10' />"
		document.getElementById('Username1').className="White";}
}
function checkFormPassword(){
	<!--密码名验证-->
	var Password=document.getElementById('TxtPassord1').value;
	if(Password==null||Password.length==0){
		document.getElementById('Password11').innerHTML="<img src='images/register/Red.jpg' width='10' height='10' />密码不能为空";
		document.getElementById('Password11').className="Red";}
	if(Password.length>0&&Password.length<6||Password.length>16){
		document.getElementById('Password11').innerHTML="<img src='images/register/Red.jpg' width='10' height='10' />密码在6-16个字符以内"
	document.getElementById('Password11').className="Red";}
	if(Password.length>=6&&Password.length<=16){
		document.getElementById('Password11').innerHTML="<img src='images/register/Green.jpg' width='10' height='10' />"
		document.getElementById('Password11').className="White";}
		<!--确认密码验证-->
		var Passwordx=document.getElementById('TxtPassword2').value;
		
		if(Passwordx==null||Passwordx.length==0){
		document.getElementById('Password22').innerHTML="<img src='images/register/Red.jpg' width='10' height='10' />请再次输入密码。";
		document.getElementById('Password22').className="Red";}
		if(Passwordx!=Password){
			document.getElementById('Password22').innerHTML="<img src='images/register/Red.jpg' width='10' height='10' />两次输入的密码不一致。";
		document.getElementById('Password22').className="Red";
			}
			if(Passwordx==Password&&Passwordx.length!=0){
		document.getElementById('Password22').innerHTML="<img src='images/register/Green.jpg' width='10' height='10' />"
		document.getElementById('Password22').className="White";}
		
					}
<!--焦点在文本框时的提示-->
<!--用户名焦点-->
function focusFormUsername(){
	document.getElementById('TxtUsername').value="";
	document.getElementById('TxtUsername').className="black60";
	document.getElementById('Username1').innerHTML="<img src='images/register/Blue.jpg' width='10' height='10' />用户名为6-20字符，一个个汉字为2字符。可包括中英文、数字。"
	document.getElementById('Username1').className="Blue";	
}	
	<!--密码焦点-->
function focusFormPassword1(){
	document.getElementById('Password11').innerHTML="<img src='images/register/Blue.jpg' width='10' height='10' />6-16个字符。推荐使用字母、数字和符号组合的密码。"
	document.getElementById('Password11').className="Blue";
}
	<!--确认密码-->
function focusFormPassword2(){
	document.getElementById('Password22').innerHTML="<img src='images/register/Blue.jpg' width='10' height='10' />请再次输入密码。"
	document.getElementById('Password22').className="Blue";
	}