(function () {
    angular.module('adminModule', ['ngRoute',
        'ngAnimate',
        'ngTouch',
        'ui.bootstrap',
        'naif.base64',
        'ngStorage',
        'ngTable',
        'ng-breadcrumbs',
        'infinite-scroll']);
    angular.module('adminModule').config(['$routeProvider', function ($routeProvider) {
        $routeProvider.when("/login", {
            controller: 'LoginController as login',
            templateUrl: 'pages/loginSetup/loginPage.jsp'
        })
            .when("/userPage", {
                controller: "UserSetupController as userCtrl",
                templateUrl: 'pages/userSetup/addUser.jsp',
            })
            .when("/adminPage/addAdmin", {
                controller: "NewAdminController as newadmin",
                templateUrl: 'modules/views/addNewAdmin.jsp',
                label: 'Add Admin'
            })
            .when("/adminPage/manageAdmin", {
                controller: "ManageAdminController as manage",
                templateUrl: 'modules/views/manageAdmin.jsp',
                label: 'Manage Admin'
            })
            .otherwise({
                redirectTo: '/login'
            })
    }]);

    angular.module('adminModule').config(['$httpProvider', function ($httpProvider) {

        //initialize get if not there
        if (!$httpProvider.defaults.headers.get) {
            $httpProvider.defaults.headers.get = {};
        }

        // Answer edited to include suggestions from comments
        // because previous version of code introduced browser-related errors

        //disable IE ajax request caching
        $httpProvider.defaults.headers.get['If-Modified-Since'] = 'Mon, 26 Jul 1997 05:00:00 GMT';
        // extra
        $httpProvider.defaults.headers.get['Cache-Control'] = 'no-cache';
        $httpProvider.defaults.headers.get['Pragma'] = 'no-cache';
    }]);

})();