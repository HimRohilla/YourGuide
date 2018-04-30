
var app = angular.module('getAllUsersApp', []);

function getUserDetails($scope, $http) {
	$http({
		method : "GET",
		url : "../rest_calls/User/user_read_all.php"
	}).then(function getUserSuccess(response) {
		if(response['data']['status'])				
			$scope.users = response['data']['users_details'];
		else {
			$scope.users = [];
			$.toaster({ priority : 'danger', title : "", message : response['data']['message']});
		}
	}, function getUserFailure(response) {
		$.toaster({ priority : 'warning', title : '', message : "Some error occured in deletion"});
	});
}

function deleteUserHelper($scope, $http, idF) {
	$http({
		method : "POST",
		url : "../rest_calls/Admin/deleteUser.php",
		headers: {'Content-Type': 'application/x-www-form-urlencoded'},
		data: $.param({
			id: idF
		})
	}).then(function deleteUserSuccess(response) {
		$.toaster({ priority : 'success', title : '', message : "" + response['data']['message']});
		getUserDetails($scope, $http);
	}, function deleteUserFailure(response) {
		$.toaster({ priority : 'warning', title : '', message : "Some error occured in deletion"});
		getUserDetails($scope, $http);
	});		
}

app.controller('getAllUsersCtrl', function($scope, $http) {
	$("#errorDiv").hide();
	getUserDetails($scope, $http);
	$scope.deleteUser = function(id) {
		deleteUserHelper($scope, $http, id);
	}
});