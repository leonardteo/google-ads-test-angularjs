console.log "Initializing AngularJS"

window.app = angular.module('app', [
  'ngRoute'
])

window.app.config(['$routeProvider', ($routeProvider) -> 
  $routeProvider
    .when('/page1', {
      templateUrl: 'partials/page1.html'
      controller: 'pageOneController'
    })
    .when('/page2', {
      templateUrl: 'partials/page2.html'
      controller: 'pageTwoController'
    })
    .otherwise({
      redirectTo: '/page1'
    })
  return
])

window.app.controller('pageOneController', ['$scope', ($scope) ->
  console.log "Page 1"
  $scope.rand = Math.random()
  return
])

window.app.controller('pageTwoController', ['$scope', ($scope) ->
  console.log "Page 2"
  $scope.rand = Math.random()
  return
])

window.app.directive 'googleAd', ['$timeout', ($timeout) ->
  restrict: 'A'
  link: (scope, element, attr) ->
    # This ensures that the ad always shows
    $timeout ->
      rand = Math.random()
      html = "<ins class='adsbygoogle' style='display:inline-block;width:300px;height:250px' data-ad-client='ca-pub-3199660652950290' data-ad-slot='6259591966' data-ad-region='page-#{rand}'></ins>"
      $(element).append(html)
      (adsbygoogle = window.adsbygoogle || []).push({})
      
  ]
    