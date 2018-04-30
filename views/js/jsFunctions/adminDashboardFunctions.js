
	var app = angular.module('adminDashboardApp', []);
	function getUserDetails($scope, $http) {
		$http({
			method : "GET",
			url : "../rest_calls/User/getLoggedInDetails.php"
		}).then(function getUserSuccess(response) {
			if(response['data']['status']) {
				$scope.user = response['data']['user_details'];
			}
		}, function getUserFailure(response) {
			window.location.href = "logout.php";
		});
	}

	function saveUserDetails($scope, $http) {
		$http({
			method : "POST",
			url : "../rest_calls/User/user_update.php",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			data: $.param({
				id: $scope.user.id,
				name: $scope.user.name,
				username: $scope.user.username,
				email: $scope.user.email,
				contact: $scope.user.contact				
			})
		}).then(function saveUserSuccess(response) {
			console.log(response);
			if(response['data']['status']) {
				$("#successSpan").html(response['data']['message']);
				$("#successSpan").show();				
				setTimeout(function(){
					$("#successSpan").hide();
				}, 8000);
			}
			else {
				$("#errorSpan").html(response['data']['message']);
				$("#errorSpan").show();
				setTimeout(function(){
					$("#errorSpan").hide();
				}, 8000);
			}
		}, function saveUserFailure(response) {
			window.location.href = "logout.php";
		});
	}

	app.controller('adminDashboardCtrl', function($scope, $http) {
		$scope.isEdit = false;
		getUserDetails($scope, $http);
		$scope.editDetails = function() {
			$scope.isEdit = true;
		}
		$scope.saveDetails = function() {			
			$scope.isEdit = false;
			saveUserDetails($scope, $http);
		}
	});