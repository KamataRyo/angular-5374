(function() {
  module.controller('MyCtrl', [
    '$scope', '$ionicPlatform', '$cordovaLocalNotification', function($scope, $ionicPlatform, $cordovaLocalNotification) {
      return $ionicPlatform.ready(function() {
        $scope.scheduleDelayNotification = function() {
          var _10secAfter, now;
          now = new Date().getTime();
          return _10secAfter = new Date(now + 10 * 1000);
        };
        return $cordovaLocalNotification.schedule({
          id: 1,
          title: 'title',
          text: 'text',
          at: _10secAfter
        }).then(function(result) {
          return console.log(result);
        });
      });
    }
  ]);

}).call(this);
