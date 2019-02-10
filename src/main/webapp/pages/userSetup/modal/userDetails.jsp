<%--
  Created by IntelliJ IDEA.
  User: smriti
  Date: 2/10/19
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>

<div class="box-header with-border">
    <i class="glyphicon glyphicon-pencil"></i>
    <h3 class="box-title">User Details</h3>
    <button type="button" ng-click="detailCtrl.cancel()"
            class="close-modal pull-right"
            style="height:20px;width:20px"
    >X
    </button>
</div>

<div class="row">
    <div class="col-xs-12 no-padding"
         ng-show="detailCtrl.users.length === 0">
        <div class="box no-record-box">
            <div class="box-body">
                <div class="no-record-icon">
                    <i class="fa fa-file-text-o"></i>
                </div>
                <p>
                    No Records Found.
                </p>
            </div>
        </div>
    </div>

    <div class="data-table-block">

        <div class="message error" ng-show="detailCtrl.errorMsg.length > 0">
            <span>{{detailCtrl.errorMsg}}</span>
            <button class="btn-slim btn-dismiss" ng-click="detailCtrl.errorMsg = '';">
                <i class="mdi mdi-close"></i>
            </button>
        </div>
        <div class="message success" ng-show="detailCtrl.successMessage.length > 0">
            <button type="button" class="btn-slim btn-dismiss" ng-click="detailCtrl.successMessage = '';"><i
                    class="mdi mdi-close"></i></button>
            <span>{{detailCtrl.successMessage}}</span>
        </div>


        <div class="col-xs-12"
             ng-show="detailCtrl.users.length > 0">
            <div class="data-table">
                <div class="data-table-wrapper">

                    <table class="table">
                        <thead>
                        <div class="data-table-header">
                            <span id="adminDetails">User Details</span>
                            <p class="data-table-count">Total Records: {{detailCtrl.users.length}}</p>
                        </div>
                        <tr>
                            <th>S.N</th>
                            <th>Name</th>
                            <th>Username</th>
                            <th>Email Address</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr ng-repeat="user in detailCtrl.users">
                            <td title="'S.N'">
                                {{$index +1}}
                            </td>
                            <td title="'Name'">
                                {{user.name}}
                            </td>
                            <td title="'Username'">
                                {{user.username}}
                            </td>
                            <td title="'Email Address'">
                                {{user.emailAddress}}
                            </td>
                            <td title="'Status'">
                                {{user.status}}
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>