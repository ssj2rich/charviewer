var app = angular.module("dndApp", ['angular.filter']);


app.controller("dndController", function ($scope) {
    $scope.record = "moshe";
   
    $scope.character = dndChar

    $scope.propertyName = 'Action';
    $scope.reverse = true;
    //$scope.showTitle = true;

    $scope.powerSortClick = function (propertyName)
    {
        
        $scope.reverse = ($scope.propertyName === propertyName) ? !$scope.reverse : false;
        $scope.propertyName = propertyName;
        //if (propertyName == 'Name')
        //{
        //    $scope.showTitle = false;
        //}
    }
    
});
