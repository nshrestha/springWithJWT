(function () {
    angular.module('adminModule')
        .controller('UserDetailModalController', UserDetailModalController);

    UserDetailModalController.$inject = [
        '$uibModalInstance',
        'UserSetupService',
    ];

    function UserDetailModalController($uibModalInstance,
                                       UserSetupService) {
        var vm = this;

        vm.users = [];

        vm.errorMessage = '';

        vm.cancel = cancel;

        vm.fetchAllUsers = fetchAllUsers;

        vm.fetchAllUsers();

        function cancel() {
            $uibModalInstance.dismiss('cancel');
        }

        function fetchAllUsers() {
            UserSetupService.fetchAllUsers().then(
                (response) => {
                    vm.users = response;
                },
                (error) => {
                    vm.errorMessage = error.data.errormsg;

                });
        }
    }
})();