
var app = angular.module('venueApp', []);

function getAllDestinationsDetails($scope, $http, tag_ids) {
	$("#hideWhenLoad").show();
	var lat = $("#latDiv").html();
	var lng = $("#lngDiv").html();
	$scope.lat = lat;
	$scope.lng = lng;
	var category = $("#categoryDiv").html();
	var radius = 50000;
	$http({
		method : "POST",
		url : "../rest_calls/User/getAllDestinations.php",
		headers: {'Content-Type': 'application/x-www-form-urlencoded'},			
		data: $.param({
			category: category,
			lat: lat,
			lng: lng,
			radius: radius
		})
	}).then(function getDestinationSuccess(response) {
		console.log(response);
		if(response['data']['status']) {
			$("#hideWhenLoad").hide();
			$scope.destination_details = response['data']['destination_details'];
			for(var i = 0; i < $scope.destination_details.length; i++) {
				ret = "";
				rating = $scope.destination_details[i].rating/2;
				while(rating > 0) {
				    if(rating >= 1) {
				        ret += '<i class="fa fa-star" aria-hidden="true" style="color: gold;font-size:25px;"></i>';
				        rating -= 1;
				    } else {
				        ret += '<i class="fa fa-star-half-o" aria-hidden="true" style="color: gold;font-size:25px;"></i>';
				        rating = 0;
				    }
				}
				$scope.destination_details[i].rating = ret;
			}
		}
		else {
			$.toaster({ priority : 'warning', title : '', message : response['data']['message']});
		}
	}, function getDestiantionFailure(response) {
		$.toaster({ priority : 'danger', title : '', message : "Some error occured in retreival"});
	});
}

app.controller('venueCtrl', function($scope, $http) {
	getAllDestinationsDetails($scope, $http);
});
app.filter('to_trusted', ['$sce', function ($sce) {
    return function(text) {
        return $sce.trustAsHtml(text);
    };
}]);