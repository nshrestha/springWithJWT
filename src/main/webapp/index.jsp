<html ng-app="adminModule">
<head>
    <meta charset="utf-8">
    <title>Welcome</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link href="css/newsFeed.css">
    <link href="css/comments.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    <link href="css/breadcrumb.css" rel="stylesheet">
    <link href="css/profile.css" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.5/angular.js"></script>
    <script type="text/javascript" src="static/angular-route.min.js"></script>
    <script type="text/javascript" src="static/ng-breadcrumbs.js"></script>
    <script type="text/javascript" src="static/ng-breadcrumbs.min.js"></script>
    <script type="text/javascript" src="static/ng-infinite-scroll.js"></script>
    <%--uiModal--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.5/angular-animate.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.5/angular-touch.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/2.5.0/ui-bootstrap-tpls.min.js"></script>
    <%--localStorage--%>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/ngstorage/0.3.6/ngStorage.min.js"></script>
    <%--module--%>
    <script type="text/javascript" src="app-module.js"></script>
    <%--for photo upload--%>
    <script type="text/javascript" src="static/angular-base64-upload.js"></script>
    <%--ngTable--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ng-table/1.0.0/ng-table.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ng-table/1.0.0/ng-table.js"></script>

</head>
<body ng-controller="MainController">

<div>
    <ng-view></ng-view>
</div>
<%--module--%>
<script type="text/javascript" src="app-module.js"></script>
<%--Controllers--%>
<script type="text/javascript" src="modules/adminsetup/controller/MainController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/LoginController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/SignupController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/AdminpageController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/NewAdminController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/ManageAdminController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/EditModalController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/NavigationController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/UserLogController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/UsersListController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/ActiveUsersListController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/TotalUploadsController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/AdminPhotoModalController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/UserUploadsController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/UploadsPerDayController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/ProfileController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/FollowersListController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/FollowingListController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/CommentsController.js"></script>
<script type="text/javascript" src="modules/adminsetup/controller/LikesListController.js"></script>

<%--Services--%>
<script type="text/javascript" src="modules/adminsetup/service/LoginService.js"></script>
<script type="text/javascript" src="modules/adminsetup/service/SignupService.js"></script>
<script type="text/javascript" src="modules/adminsetup/service/HttpService.js"></script>
<script type="text/javascript" src="modules/adminsetup/service/NewAdminService.js"></script>
</body>
</html>
