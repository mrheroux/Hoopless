<!DOCTYPE html>
<html ng-app="angularjs-problem">
<head lang="en">
<meta charset="utf-8">
<title>Pair 10</title>
<meta name="author" content="Matt Heroux">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style><!-- 
.pairs {list-style: none;}
.pairs li {display: inline;}
.pairs li:after {content: ", ";}
.pairs li:last-child:after {content: "";}
--></style>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body ng-controller="MainCtrl">
<header class="w3-container w3-blue">
<h1>"Pair 10" Example</h1>
</header>
<div class="w3-container">
<h2>Introduction</h2>
<p>I was asked to solve the below problem for a company that used AngularJS. I learned some AngularJS and came up with this solution.
<h2>Problem</h2>
<p>Write a program and submit with 24 hours that allows for an integer array to be passed in and will then output all of the pairs that sum up to 10. Please provide a solution that allows for 
<ol>
<li>output all pairs (includes duplicates and the reversed ordered pairs), </li>
<li>output unique pairs only once (removes the duplicates but includes the reversed ordered pairs), and </li>
<li>output the same combo pair only once (removes the reversed ordered pairs).</li>
</ol>
For example passing in <a class="w3-btn w3-yellow" href="?parameter=[1,1,2,4,4,5,5,5,6,7,9]" alt="Click to Run">[1, 1, 2, 4, 4, 5, 5, 5, 6, 7, 9]</a> the following results should occur:
<ol>
<li>output all pairs would output: [1,9], [1,9], [4,6], [4,6], [5,5], [5,5], [5,5], [5,5], [5,5], [5,5], [6,4], [6,4]<abbr title="Comma missing in example provided">,</abbr> [9,1], [9,1] </li>
<li>output unique pairs only once would output: [1,9], [4,6], [5,5], [6,4], [9,1]</li>
<li>output the same combo pair only once would output: [1,9], [4,6], [5,5]</li>
<ol>
</p> 
</div>
<div class="w3-container ">
<form>
<h1>Data</h1>
<textarea class="w3-input" char-qty name="interger_array" ng-model="int_array" ng-init="parse_int()" ng-change="parse_int()" ng-list required placeholder="Enter array here (numbers, commas, brackets, and spaces only)"></textarea>
<br/>
<h1>Output</h1>
<div ng-model="sorted_array">
All Pairs:<ul class="w3-input pairs"><li ng-repeat="x in pairs">{{x}}</li></ul>
Unique Pairs:<ul class="w3-input pairs"><li ng-repeat="x in pairs | unique">{{x}}</li></ul>
Same Combo Pairs:<ul class="w3-input pairs"><li ng-repeat="x in pairs | combo">{{x}}</li></ul>
</div>
</form>
<br/>
<footer>
<p>Designed by Matt Heroux</p>
</footer>
<script type="text/javascript">//<![CDATA[
var app = angular.module('angularjs-problem', []);
// limit char
app.directive('charQty', function() {
	return {
		require: 'ngModel',
		link: function (scope, element, attr, ngModelCtrl) {
			function fromUser(text) {
				var transformedInput = text.replace(/[^0-9, -]/g, '');
				if(transformedInput !== text) {
					ngModelCtrl.$setViewValue(transformedInput);
					ngModelCtrl.$render();
				}
				return transformedInput;
			}
			ngModelCtrl.$parsers.push(fromUser);
		}
	}; 
});
// set pairs
app.controller('MainCtrl', function($scope) { 
	// load parameter
	if([parseLocation(window.location.search)['parameter']] !== null){
		$scope.int_array = [parseLocation(window.location.search)['parameter']];
		alert("Type inside the data field to output pairs");
	}
	$scope.parse_int = function() {
		var pairs = [];
		var asc_sort = $scope.int_array;
		if(asc_sort !== null){
			asc_sort.sort();
			for (var count_1 = 0; count_1 <= asc_sort.length; count_1++) {
				for (var count_2 = asc_sort.length-1; count_2 >= 0; count_2--) {
					if(count_1==count_2){continue;}
					first_pair = parseInt(asc_sort[count_1]);
					second_pair = parseInt(asc_sort[count_2]);
					if((first_pair+second_pair)===10){
						var pair = new Array();
						pair[0] = first_pair;
						pair[1] = second_pair;
						pairs.push(pair);
					} else if ((first_pair+second_pair)<10){
						break;
					}
				}
			}
			$scope.pairs = pairs;
		}
    };
});

// filters
app.filter('unique', function() {
	return function(collection, keyname) {
		var output = [], keys = [];
		angular.forEach(collection, function(item) {
			var key = item[0];
			if(keys.indexOf(key) === -1) {
				keys.push(key);
				output.push(item);
			}
		});
		return output;
	};
});
app.filter('combo', function() {
	return function(collection, keyname) {
		var output = [], keys = [];
		angular.forEach(collection, function(item) {
			var key = item[0];
			if((keys.indexOf(item[0]) === -1)&&(keys.indexOf(item[1]) === -1)){
				keys.push(key);
				output.push(item);
			}
		});
		return output;
	};
});
// get paramater passed url/*.html?paramater=
var parseLocation = function(location) {
	var parts = location.substring(1).split("&");
	var obj = {};
	var part;
	var i;
	for ( i in parts ) {if ( parts[i] === "" ) continue;
		part = parts[i].split("=");
		obj[decodeURIComponent(part[0])] = decodeURIComponent(part[1]);
	}
	return obj;
};
//]]>
</script>
</body></html>