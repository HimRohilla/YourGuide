
	var app = angular.module('feedbackApp', []);

	function saveFeedbackHelper($scope, $http) {
		$http({
			method : "POST",
			url : "../rest_calls/User/saveFeedback.php",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},			
			data: $.param({
				feedback_text: $scope.feedback_text
			})
		}).then(function saveSuccess(response) {
			console.log(response);
			if(response['data']['status']) {
				$.toaster({ priority : 'success', title : 'Feedback Saved', message : ''});
				$scope.feedback_text = undefined;
			}
			else {
				$.toaster({ priority : 'warning', title : 'Unable to save feedback', message : ''});
			}
		}, function saveFailure(response) {
			$.toaster({ priority : 'danger', title : '', message : "Some error occured in submission"});
		});
	}
	app.controller('feedbackCtrl', function($scope, $http) {
		$scope.saveFeedback = function() {
			saveFeedbackHelper($scope, $http);
		}
	});