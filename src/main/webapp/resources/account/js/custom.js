$(document).ready(function(){
	
	$("#btnLogin").click(function(){
		var userName = $("#userName").val();
		var passWord = $("#passWord").val();
	    $.ajax({
	    	url: "/JaGoWeb/api/checkLoginAPI", 
	    	type:"GET",
	    	data:{
	    		userName: userName,
	    		passWord: passWord
	    	},
	    	success: function(value){
	    		if(value == "true"){
	    			window.location = "/JaGoWeb/";
	    		}else{
	    			$("#titleNoti").text("Tên tài khoản hoặc mật khẩu sai. Vui lòng thử lại hoặc nhấn vào Quên mật khẩu.");
	    		}
	    }});
	});
})