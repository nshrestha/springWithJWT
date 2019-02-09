(function () {
    angular.module("adminModule").controller("LoginController", LoginController);

    LoginController.$inject = ['$location', 'LoginService', 'HttpService', '$localStorage'];

    function LoginController($location, LoginService, HttpService, $localStorage) {
        var vm = this;

        vm.loginData = {
            userName: '',
            password: ''
        };

        vm.errormsg = '';

        vm.valid = true;

        vm.url = "/login";

        vm.loginUser = loginUser;

        if (!($localStorage.adminObj == null)) {
            $location.path("/adminPage");
        }

        function loginUser() {
            LoginService.login(vm.loginData).then(
                (response) => {
                    $localStorage.adminObj = {
                        name: response.name,
                        tokenNo: response.tokenNo,
                        userName: response.userName,
                        status: response.status
                    };
                    $location.path("/adminPage");
                },
                (error) => {
                    vm.valid = false;
                    vm.errormsg = error.errorMsg;
                });
        }
    }
})();