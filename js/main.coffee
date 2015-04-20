console.log "Initializing AngularJS"

window.app = angular.module('app', [
  'ngRoute'
])

window.app.config(['$routeProvider', ($routeProvider) -> 
  $routeProvider
    .when('/page1', {
      templateUrl: '/partials/page1.html'
      controller: 'pageOneController'
    })
    .when('/page2', {
      templateUrl: '/partials/page2.html'
      controller: 'pageTwoController'
    })
    .otherwise({
      redirectTo: '/page1'
    })
  return
])

window.app.controller('pageOneController', ['$scope', ($scope) ->
  console.log "Page 1"
  return
])

window.app.controller('pageTwoController', ['$scope', ($scope) ->
  console.log "Page 2"
  return
])
