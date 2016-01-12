
## Binding Angular to a RESTful API

#### Binding our API to an Angular controller

*  Brace yourselves ... awesomeness is coming.
*  Time to update our TaskListCtrl controller.
*  Use dependency injection to inject a scope
*  We want our view to have access to items inside `$scope`
*  In our view, `$scope.tasks` is used in `task in tasks`



```javascript
taskerApp.controller('TaskListCtrl', function ($scope, $http) {
  $http.get('/api/tasks').success(function(data) {
    console.log('fetched data');
    console.log(data);
    $scope.tasks = data;
  });
});
```


- We're using the `$http` in Angular to fetch data.
- $http makes a *get* request to our specified API path.
- On Success, it logs out the data.
- It also binds the returned data from our API `tasks` to **$scope**
- Pretty cool, eh?

#### Let's Clean Up Our View
Let's take care of some styling.

**angular.ejs**

```html
<div class="navbar-header">
  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
  </button>
  <a class="navbar-brand" href="#">    <span class="glyphicon glyphicon-list-alt"></span>
<%= title %></a>
</div>

<article ng-controller="TaskListCtrl">
  <div class="col-md-12">
  <ul>
    <li ng-repeat="task in tasks">
      <h4><span class="glyphicon glyphicon-chevron-right"> {{task.name}}</span></h4>
      <p><strong>Description</strong> <em>{{task.description}}</em></p>
      <p><strong>Completed?</strong> {{task.completed}}
    </li>
  </ul>
  </div>
</article>
```

**style.css**

```css
ul {
  list-style-type: none;
  margin-left: -20px;
}
```

Now our app looks a little bit more.. professional!

#### Creating/Deleting

**angular.ejs**

```html
<article ng-controller="TaskListCtrl">
  <div class="col-md-4">
  <h1>Create Task</h1>
    <form ng-submit="createTask(name, description)">
    <input class='form-control' type="text" ng-model="name" name="name" />
    <input class='form-control' type="text" ng-model="description" name="description" />
    <input class='btn btn-primary' type="submit" id="submit" value="Submit" />
    </form>
  </div>

  <div class="col-md-8">
  <ul>
    <li ng-repeat="task in tasks">
      <h4><span class="glyphicon glyphicon-chevron-right"> {{task.name}}</span></h4>
      <p><strong>Description</strong> <em>{{task.description}}</em></p>
      <p><strong>Done?</strong> <span data-task="{{task._id}}"class="glyphicon glyphicon-ok" ng-click="completeTask(task)"></span></p>
    </li>
  </ul>
  </div>
</article>
```

**angular-app.js**

```javascript
var taskerApp = angular.module('taskerApp', []);
taskerApp.controller('TaskListCtrl', function ($scope, $http) {

  $scope.fetch = function() {
    $http.get('/api/tasks').success(function(data) {
      console.log('fetched data')
      console.log(data);
      $scope.tasks = data;
    });
  };

  $scope.createTask = function(name, description) {
    $http.post("/api/tasks/", {name : name, description: description}).success(function(data, status) {
        $scope.fetch();
    });
  };

  $scope.completeTask = function(task) {
    console.log(task);
    var answer = confirm("Are you sure you want to complete this task?");
    if (answer == true) {
      console.log("Deleted Task with _id:" + task["_id"]);
      $http.delete('/api/tasks/' + task["_id"]);
      $scope.fetch();
    }

  };

  $scope.fetch();
});
```
