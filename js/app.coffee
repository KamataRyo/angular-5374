module.controller 'MyCtrl',[
    '$scope'
    '$ionicPlatform'
    '$cordovaLocalNotification'
    ($scope, $ionicPlatform, $cordovaLocalNotification)->
        $ionicPlatform.ready ->

            $scope.scheduleDelayNotification = ->
                now = new Date().getTime()
                _10secAfter = new Date(now + 10 * 1000)

            $cordovaLocalNotification.schedule {
                id:1
                title: 'title'
                text: 'text'
                at: _10secAfter
            }
                .then (result) ->
                    console.log result
]               
