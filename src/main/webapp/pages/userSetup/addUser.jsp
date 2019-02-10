<%--
  Created by IntelliJ IDEA.
  User: smriti
  Date: 2/10/19
  Time: 9:27 AM
  To change this template use File | Settings | File Templates.
--%>
<form name="adminSetupForm" class="form-horizontal"
      ng-submit="userCtrl.save(); userCtrl.resetAlertMessages()" autocomplete="off">

    <div class="row">
        <div class="col-xs-12">
            <div class="box no-border-top">
                <div class="box-body">

                    <div class="message error" ng-show="userCtrl.errorMsg.length > 0">
                        <span>{{userCtrl.errorMsg}}</span>
                        <button class="btn-slim btn-dismiss" ng-click="userCtrl.errorMsg = '';">
                            <i class="mdi mdi-close"></i>
                        </button>
                    </div>
                    <div class="message success" ng-show="userCtrl.successMessage.length > 0">
                        <button type="button" class="btn-slim btn-dismiss" ng-click="userCtrl.successMessage = '';">
                            <i class="mdi mdi-close"></i>
                        </button>
                        <span>{{userCtrl.successMessage}}</span>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="title-wrapper">
                                <div>
                                    <button type="button" class="btn btn-primary btn-sm"
                                            ng-click="userCtrl.resetAction()">
                                        Reset
                                    </button>
                                </div>
                                <h4 class="title"> User Setup </h4>
                            </div>
                            <!-- rest of the form -->
                            <div class="col-md-9 col-xs-12">
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-xs-12">
                                            <label>Name
                                                <required>*</required>
                                            </label>
                                            <input type="text" ng-model="userCtrl.userSetupData.name" name="name"
                                                   placeholder="Enter your name" required class="form-control">

                                        </div>
                                        <div class="col-md-6 col-xs-12">
                                            <label>Username
                                                <required>*</required>
                                            </label>
                                            <input type="text" ng-model="userCtrl.userSetupData.username"
                                                   name="username" placeholder="Enter your username" required
                                                   class="form-control" ng-pattern='/^([a-zA-Z0-9_.@]){4,}$/'>
                                            <div class="alert-danger">
                                                    <span ng-show="adminSetupForm.username.$error.pattern">
                                                        Username must be at least 4 character long alphanumerical and can contain
                                                        (@, _ and .)</span>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-xs-12">
                                            <label>Email Address
                                                <required>*</required>
                                            </label>
                                            <div>
                                                <input type="text" ng-model="userCtrl.userSetupData.emailAddress"
                                                       name="emailAddress"
                                                       placeholder="Enter your email address"
                                                       ng-pattern="/^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i"
                                                       required class="form-control"/>
                                                <small class="text-muted">
                                                    E.g: example@example.com
                                                </small>
                                                <div class="alert-danger">
                                                    <span ng-show="adminSetupForm.emailAddress.$error.pattern">Not a valid email address.</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xs-12">
                                            <label>Password
                                                <required>*</required>
                                            </label>
                                            <div>
                                                <input type="password" ng-model="userCtrl.userSetupData.password"
                                                       name="password" placeholder="Enter your password" required
                                                       class="form-control"
                                                       ng-pattern='/^([A-Za-z0-9_@./#&+-]){5,}$/' value=''>
                                                <div class="alert-danger">
                                                    <span ng-show="adminSetupForm.password.$error.pattern">Password must be at least 5 characters and alphanumeric without spaces.</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-xs-12">
                                            <label>Confirm Password
                                                <required>*</required>
                                            </label>
                                            <div>
                                                <input type="password" ng-model="userCtrl.confirmPassword"
                                                       name="confirmPass" placeholder="Confirm your password"
                                                       required
                                                       class="form-control" match="userCtrl.userSetupData.password">
                                                <div class="password-validation-icon" style="top: 31px;">
                                                        <span class='alert-icon alert-success'
                                                              ng-show="userCtrl.confirmPassword == userCtrl.userSetupData.password &&
                                                                    adminSetupForm.confirmPass.$dirty &&
                                                                    (userCtrl.confirmPassword.length > 0 || userCtrl.userSetupData.password.length > 0)">
                                                            <i class="fa fa-check"></i>
                                                        </span>
                                                    <span class='alert-icon alert-danger' ng-show="userCtrl.confirmPassword != userCtrl.userSetupData.password &&
                                                                    adminSetupForm.confirmPass.$dirty &&
                                                                    (userCtrl.confirmPassword.length > 0 || userCtrl.userSetupData.password.length > 0)">
                                                            <i class="fa fa-exclamation"></i>
                                                        </span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xs-12">
                                            <label> Status
                                                <required>*</required>
                                            </label>

                                            <select required ng-model="userCtrl.userSetupData.status"
                                                    class="form-control">
                                                <option value="Y">Active</option>
                                                <option value="N">Inactive</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="box-footer">
                            <div class="row">
                                <div class="col-md-9 col-xs-12">
                                    <div class="form-group">
                                        <input type="submit"
                                               class="btn btn-success pull-right"
                                               value="Create"
                                               ng-disabled="adminSetupForm.$invalid ||adminSetupForm.resetAlert()
                                        ||userCtrl.userSetupData.password != userCtrl.confirmPassword "
                                        />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <span us-spinner="{radius:30 , width: 8 ,length:16}" spinner-key="spinner-1"></span>
</form>

<button type="button" ng-click = "userCtrl.fetchAllUsers()">s</button>