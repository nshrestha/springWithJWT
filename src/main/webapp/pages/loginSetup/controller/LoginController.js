angular.module("adminModule").controller("LoginController", LoginController);

LoginController.$inject = ['$location', 'LoginService', 'HttpService', '$localStorage'];

function LoginController($location, LoginService, HttpService, $localStorage) {
    var vm = this;

    vm.loginData = {
        userName: '',
        password: ''
    };

    vm.errormsg = '';

    vm.showErrorMessage = false;

    vm.loginUser = loginUser;
    //
    // if (!($localStorage.adminObj == null)) {
    //     $location.path("/adminPage");
    // }

    function loginUser() {
        LoginService.login(vm.loginData).then(
            (response) => {
                $localStorage.tokenNo = response.token;
                $localStorage.userId = response.id;

                $location.path("/userPage");
            },
            (error) => {
                vm.showErrorMessage = true;
                vm.errormsg = error.errorMsg;
            });
    }
}
