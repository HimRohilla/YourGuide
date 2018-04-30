
	var app = angular.module('getAllUserPhobiaApp', []);

	function getUserPhobiaDetails($scope, $http) {
		$http({
			method : "GET",
			url : "../rest_calls/User/getAllUserPhobia.php"
		}).then(function getUserPhobiaSuccess(response) {
			if(response['data']['status']) {
				$scope.phobia_details = response['data']['phobia_details'];
			}
			else {
				$scope.phobia_details = [];
				$.toaster({ priority : 'danger', title : "", message : response['data']['message']});
			}
		}, function getUserPhobiaFailure(response) {
			$.toaster({ priority : 'warning', title : '', message : "Some error occured in retreival"});
		});
	}

	function getUserSelectedPhobiaDetails($scope, $http) {
		$http({
			method : "GET",
			url : "../rest_calls/User/getAllUserSelectedPhobia.php"
		}).then(function getUserSelectedPhobiaSuccess(response) {
			// console.log(response);
			if(response['data']['status']) {
				$scope.phobia_selected_details = response['data']['phobia_selected_details'];
			}
			else {
				$scope.phobia_selected_details = [];
				$.toaster({ priority : 'danger', title : "", message : response['data']['message']});
			}
		}, function getUserSelectedPhobiaFailure(response) {
			$.toaster({ priority : 'warning', title : '', message : "Some error occured in retreival"});
		});
	}


	function deletePhobiaHelper($scope, $http, idF) {
		$http({
			method : "POST",
			url : "../rest_calls/User/deleteUserPhobia.php",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			data: $.param({
				user_phobia_id: idF
			})
		}).then(function deletePhobiaSuccess(response) {
			if(response['data']['status']) {
				$.toaster({ priority : 'success', title : '', message : 'Phobia deleted'});
				getUserSelectedPhobiaDetails($scope, $http);
			}
			else {
				$.toaster({ priority : 'warning', title : '', message : response['data']['message']});
			}
		}, function deletePhobiaFailure(response) {
			$.toaster({ priority : 'warning', title : '', message : "Some error occured in deletion"});
			getUserSelectedPhobiaDetails($scope, $http);
		});
	}

	function addPhobiaHelper($scope, $http) {
		$http({
			method : "POST",
			url : "../rest_calls/User/addUserPhobia.php",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			data: $.param({
				phobia_id: $scope.selectPhobia
			})
		}).then(function deleteUserPhobiaSuccess(response) {
			console.log(response);
			if(response['data']['status']) {
				$.toaster({ priority : 'success', title : 'Phobia added', message : ''});
				getUserSelectedPhobiaDetails($scope, $http);				
			}
			else {
				$.toaster({ priority : 'warning', title : response['data']['message'], message : ''});
			}
		}, function deleteUserPhobiaFailure(response) {
			$.toaster({ priority : 'warning', title : '', message : "Some error occured in deletion"});
			getUserSelectedPhobiaDetails($scope, $http);
		});
	}

	app.controller('getAllUserPhobiaCtrl', function($scope, $http) {
		getUserPhobiaDetails($scope, $http);
		getUserSelectedPhobiaDetails($scope, $http);
		$scope.deletePhobia = function(id) {
			deletePhobiaHelper($scope, $http, id);
		}
		$scope.addPhobia = function() {
			addPhobiaHelper($scope, $http);
		}
	});