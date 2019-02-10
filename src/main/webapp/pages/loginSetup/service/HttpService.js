angular.module('adminModule')
    .factory('HttpService', HttpService);

HttpService.$inject = ['$http', '$q', '$localStorage', '$location'];

function HttpService($http, $q, $localStorage, $location) {

    var vm = this;
    vm.url = $location.absUrl().split('#')[0];
    vm.userId = () => $localStorage.userId;
    vm.queryString = () => "?token=" + encodeURIComponent($localStorage.token) + "&userId=" + vm.userId();
    vm.queryStringAppend = () => "token=" + encodeURIComponent($localStorage.token) + "&userId=" + vm.userId();

    return {
        //FUNCTION THAT HANDLES THE GET REQUEST
        get: function (resourceURI) {
            return $http.get(vm.url + resourceURI +
                vm.queryString())
                .then(
                    (resp) => {
                        return resp.data;
                    },
                    (err) => {
                        return $q.reject(err);
                    }
                );
        },
        //FUNCTION THAT HANDLES THE POST OPERATION
        post: function (resourceURI, data) {
            return $http.post(vm.url + resourceURI + vm.queryString(), data)
                .then(
                    (resp) => {
                        return resp.data;
                    },
                    (err) => {
                        return $q.reject(err);
                    }
                );
        }
    }
}