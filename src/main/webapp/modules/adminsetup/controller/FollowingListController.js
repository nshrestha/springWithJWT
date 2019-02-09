(function () {
    angular.module("adminModule").controller("FollowingListController",FollowingListController);

    FollowingListController.$inject=['HttpService','$uibModalInstance','$localStorage'];
    function FollowingListController(HttpService,$uibModalInstance, $localStorage) {
        var vm = this;
        vm.following = [];
        vm.userDisplayName = $localStorage.openProfileOf.username;
        vm.ok = ok;

        HttpService.get("/getFollowingList/"+vm.userDisplayName).then(function (value) {
            vm.following = value;
        },function (reason) {
            console.log("This occurred:"+reason);
        });

        function ok() {
            $uibModalInstance.dismiss('close');
        }
    }
})();