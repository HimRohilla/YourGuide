	// function loginSuccess() {
	// 	$("#myModal").modal('toggle');
	// 	setTimeout(function(){
	// 		window.location.href = "dashboard.php";
	// 	}, 3000);
	// 	setTimeout(function(){
	// 		$("#myModal").modal('toggle');
	// 	}, 2500);		
	// }

	function callSuccess(data, status) {
		if(data['status']) {
			// $("#successContent").show();
			// $("#failureContent").hide();
			// loginSuccess();
			$.toaster({ priority : 'success', title : "Login successful... redirecting to dashboard", message : ''});
			setTimeout(function(){
				window.location.href = "dashboard.php";
			}, 2000);
			$("#someError").hide();
		}
		else {
			// $("#reasonOfFailure").html(data['message']);
			// $("#successContent").hide();
			// $("#failureContent").show();
			// $("#myModal").modal('toggle');
			// setTimeout(function(){
			// 	$("#myModal").modal('toggle');
			// }, 2500);
			$("#someError").html(data['message']);
			$("#someError").show();			
		}
	}

	function loginUser(username, password, rememberMe) {
		data = {
			username: username,
			password: password,
			remember_me: rememberMe
		};
		$.post("../rest_calls/User/login.php", data, callSuccess);
	}

	$("#loginButton").click(function() {
		var username = $("#form-username").val();
		var password = $("#form-password").val();
		var rememberMe = $("#form-rememberme").prop("checked");
		loginUser(username, password, rememberMe);
	});