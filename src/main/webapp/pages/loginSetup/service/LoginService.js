(function () {
    angular.module("adminModule").factory("LoginService", LoginService);

    LoginService.$inject = ['HttpService', '$location'];

    function LoginService(HttpService, $location) {
        var vm = this;

        vm.resourceURI = '/login';

        return {
            login: function (data) {
                return HttpService.post(vm.resourceURI, data);
            }
        }
    }

})();