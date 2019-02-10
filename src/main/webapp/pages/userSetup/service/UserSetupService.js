(function () {
    angular.module("adminModule").factory("UserSetupService", UserSetupService);

    UserSetupService.$inject = ['HttpService'];

    function UserSetupService(HttpService) {
        var vm = this;

        vm.resourceURI = 'api/user-setup';

        return {
            save: function (data) {
                return HttpService.post(vm.resourceURI + '/save', data);
            },
            fetchAllUsers: function () {
                return HttpService.get(vm.resourceURI + '/fetch-all-users');
            }
        }
    }
})();