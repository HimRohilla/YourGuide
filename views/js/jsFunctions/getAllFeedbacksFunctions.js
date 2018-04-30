
	var app = angular.module('getAllFeedbacksApp', []);

	function getFeedbackDetails($scope, $http) {
		$http({
			method : "GET",
			url : "../rest_calls/Public/getAllFeedbacks.php"
		}).then(function getFeedbackSuccess(response) {
			if(response['data']['status'])				
				$scope.feedbacks = response['data']['feedback_details'];
			else {
				$scope.feedbacks = [];
				$.toaster({ priority : 'danger', title : "", message : response['data']['message']});
			}
		}, function getFeedbackFailure(response) {
			$.toaster({ priority : 'warning', title : '', message : "Some error occured in deletion"});
		});
	}

	function deleteFeedbackHelper($scope, $http, idF) {
		$http({
			method : "POST",
			url : "../rest_calls/Admin/deleteFeedback.php",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			data: $.param({
				id: idF
			})
		}).then(function saveUserSuccess(response) {
			$.toaster({ priority : 'success', title : '', message : "" + response['data']['message']});
			getFeedbackDetails($scope, $http);
		}, function saveUserFailure(response) {
			$.toaster({ priority : 'warning', title : '', message : "Some error occured in deletion"});
			getFeedbackDetails($scope, $http);
		});		
	}

	app.controller('getAllFeedbacksCtrl', function($scope, $http) {
		$("#errorDiv").hide();
		getFeedbackDetails($scope, $http);
		$scope.deleteFeedback = function(id) {
			deleteFeedbackHelper($scope, $http, id);
		}
	});