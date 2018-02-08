// JavaScript Document
function xian(){
	var username = document.getElementById('txtUserName').value;
	if(username == null || username.length == 0){
	   document.getElementById('txtUserName').value = "会员名/邮箱/手机";
	   document.getElementById('txtUserName').className = "grey";
		}
	}
function yin(){
	var username = document.getElementById('txtUserName').value;
	if(username == "会员名/邮箱/手机"){
	   document.getElementById('txtUserName').value = "";
	   document.getElementById('txtUserName').className = "black";
		}
	}
function checkform(){
	var username = document.getElementById('txtUserName').value;
	var password = document.getElementById('txtPassword').value;
	if(username == null || username.length == 0 || username == "会员名/邮箱/手机"){
		document.getElementById('baocuo').innerHTML = "<img src='images/lc_denglu_baocuo1.png' />";
		document.getElementById('txtUserName').focus();
		return false;
		}
	if(password == null || password.length == 0){
		document.getElementById('baocuo').innerHTML = "<img src='images/lc_denglu_baocuo2.png' />";
		document.getElementById('txtPassword').focus();
		return false;
		}
	}