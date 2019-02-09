(function () {
    angular.module("adminModule").controller("FollowersListController", FollowersListController);

    FollowersListController.$inject = ['HttpService', '$uibModalInstance', '$localStorage'];

    function FollowersListController(HttpService, $uibModalInstance, $localStorage) {
        var vm = this;
        vm.followers = [];
        vm.userDisplayName = $localStorage.openProfileOf.username;

        vm.ok = ok;

        HttpService.get("/getFollowersList/" + vm.userDisplayName).then(function (value) {
            vm.followers = value;
        }, function (reason) {
            console.log("This occurred:" + reason);
        });

        function ok() {
            $uibModalInstance.dismiss('close');
        }
    }
})();