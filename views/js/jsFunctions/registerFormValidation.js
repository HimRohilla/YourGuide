	
	function isValidEmailAddress(emailAddress) {
		var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
		return pattern.test(emailAddress);
	}

	function isValidUsername(username) {
		var pattern = /^[a-z0-9]+$/i;
		return pattern.test(username);
	}

	function isValidContact(contact) {
		var len = contact.length;
		var pattern = /^[0-9]+$/i;
		return len == 10 && pattern.test(contact);
	}

	function isValidPassword(password) {
		var len = password.length;
		return len >= 8;
	}

	function checkSamePasswords(password, cnfPassword) {
		return password == cnfPassword;
	}

	function isValidForm(name, username, email, contact, password, cnfPassword) {
		var track = true;
		$("#form-name-invalid").hide();
		$("#form-email-invalid").hide();
		$("#form-username-invalid").hide();
		$("#form-password-invalid").hide();
		$("#form-cnfpassword-invalid").hide();
		$("#form-contact-invalid").hide();
		if(!name) {
			track = false;
			$("#form-name-invalid").show();
		}
		if(!isValidContact(contact)) {
			track = false;
			$("#form-contact-invalid").show();			
		}
		if(!isValidUsername(username)) {
			track = false;
			$("#form-username-invalid").show();
		}
		if(!isValidEmailAddress(email)) {
			track = false;
			$("#form-email-invalid").show();
		}
		if(!isValidPassword(password)) {
			track = false;
			$("#form-password-invalid").show();
		}
		if(!checkSamePasswords(password, cnfPassword)) {
			track = false;
			$("#form-cnfpassword-invalid").show();
		}
		return track;
	}

	// function registerSuccess() {
	// 	$("#myModal").modal('toggle');
	// 	setTimeout(function(){
	// 		window.location.href = "login.php";
	// 	}, 3000);
	// 	setTimeout(function(){
	// 		$("#myModal").modal('toggle');
	// 	}, 2500);		
	// }

	function callSuccess(data, status) {
		console.log(data);
		if(data['status']) {
			// $("#successContent").show();
			// $("#failureContent").hide();
			// registerSuccess();
			$.toaster({ priority : 'success', title : "Registration successful... redirecting to login", message : ''});
			setTimeout(function(){
				window.location.href = "login.php";
			}, 2000);
			$("#someError").hide();
		}
		else {
			// $("#reasonOfFailure").html(data['message']);
			// $("#successContent").hide();
			// $("#failureContent").show();
			// $('#myModal').modal({
			//     show: true,
			//     closeOnEscape: true
			// });
			// $.toaster({ priority : 'warning', title : data['message'], message : ''});
			$("#someError").html(data['message']);
			$("#someError").show();
		}
	}

	function createUser(name, username, email, contact, password) {
		data = {
			name: name,
			email: email,
			contact: contact,
			password: password,
			username: username
		};
		$.post("../rest_calls/User/user_create.php", data, callSuccess);
	}

	$("#form-submit").click(function(argument) {
		var name = $("#form-name").val();
		var username = $("#form-username").val();
		var contact = $("#form-contact").val();
		var password = $("#form-password").val();
		var cnfPassword = $("#form-cnfpassword").val();
		var email = $("#form-email").val();
		$("#someError").hide();
		if(isValidForm(name, username, email, contact, password, cnfPassword)) {
			createUser(name, username, email, contact, password);
		}
	});