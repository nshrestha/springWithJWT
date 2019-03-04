angular.module("adminModule").controller("LoginController", LoginController);

LoginController.$inject = ['$location', 'LoginService', '$localStorage', '$http'];

function LoginController($location, LoginService, $localStorage, $http) {
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

                $http.defaults.headers.common.Authorization = 'Bearer ' + response.token;

                $location.path("/userPage");
            },
            (error) => {
                vm.showErrorMessage = true;
                vm.errormsg = error.errorMsg;
            });
    }
}
