(function () {
    angular.module("adminModule").factory('LoginService', LoginService);

    LoginService.$inject = ['$http', '$q', '$location'];

    function LoginService($http, $q, $location) {
        var vm = this;
        vm.url = $location.absUrl().split('#')[0];

        return {

            login: function (loginData) {
                return $http.post(vm.url + 'login', loginData)
                    .then(
                        (response) => {
                            return response.data;
                        },
                        (errResponse) => {
                            return $q.reject(errResponse);
                        }
                    );
            },
        }
    }

})();