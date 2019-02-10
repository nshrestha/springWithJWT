angular.module("adminModule").controller("LoginController", LoginController);

LoginController.$inject = ['$location', 'LoginService', '$localStorage'];

function LoginController($location, LoginService, $localStorage) {
    var vm = this;

    vm.loginData = {
        userName: '',
        password: ''
    };

    vm.errormsg = '';

    vm.showErrorMessage = false;

    vm.loginUser = loginUser;

    function loginUser() {
        LoginService.login(vm.loginData).then(
            (response) => {
                $localStorage.token = response.token;
                $localStorage.userId = response.id;

                $location.path("/userPage");
            },
            (error) => {
                vm.showErrorMessage = true;
                vm.errormsg = error.errorMsg;
            });
    }
}
