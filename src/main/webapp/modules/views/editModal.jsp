<div class="modal-header">
    <div class="modal-title" id="modal-title">
        <h1>Edit</h1>
    </div>
</div>

<div class="modal-body" id="modal-body">
    <form name="myForm" class="form-horizontal" novalidate>
        <img src="uploads/{{clickedAdmin.image}}" width="50%" height="50%" />
        <button ng-click="modalController.openPhotoUploadModal()">Upload Photo</button>
        <div class="form-group">
            <label class="control-label col-sm-2" for="name">Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" ng-model="clickedAdmin.name"
                       id="name" placeholder="Enter name" name="name" style="width:50%" required/><br>
                <span style="color:red" ng-show="myForm.name.$dirty && myForm.name.$invalid">
                <span ng-show="myForm.name.$error.required">Name is required.</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="userName">User Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" ng-model="clickedAdmin.userName"
                       id="userName" placeholder="Enter user name" name="name" style="width:50%" required/><br>
                <span style="color:red" ng-show="myForm.userName.$dirty && myForm.userName.$invalid">
                <span ng-show="myForm.userName.$error.required">UserName is required.</span>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" ng-model="clickedAdmin.email"
                       id="email" placeholder="Enter email" name="email" style="width:50%" required/><br>
                <span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid">
                  <span ng-show="myForm.email.$error.required">Email is required.</span>
                  <span ng-show="myForm.email.$error.email">Invalid email address.</span>
                </span>
            </div>
        </div>
    </form>
    <span style="color:red" ng-show="signup.show_error_msg">Error Occurred try again</span>
</div>

<div class="modal-footer">
    <button class="btn btn-default" type="button" ng-disabled="modalController.clickButton" ng-click="modalController.update()">Update</button>
    <button class="btn btn-warning" type="button" ng-click="modalController.cancel()">Cancel</button>
</div>