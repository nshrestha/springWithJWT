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
    <script type="text/javascript" src="app.js"></script>
    <%--for photo upload--%>
    <script type="text/javascript" src="static/angular-base64-upload.js"></script>
    <%--ngTable--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ng-table/1.0.0/ng-table.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ng-table/1.0.0/ng-table.js"></script>

</head>
<body>

<div>
    <ng-view></ng-view>
</div>
<%--module--%>
<script type="text/javascript" src="app.js"></script>

<%--Controllers--%>
<script type="text/javascript" src="pages/loginSetup/service/LoginService.js"></script>
<script type="text/javascript" src="pages/loginSetup/controller/LoginController.js"></script>

<%--Services--%>
<script src="<c:url value='/commons/HttpService.js' />"></script>

</body>
</html>
