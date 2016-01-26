#### Defining a Gulp Task

**Screencast**: https://www.youtube.com/watch?v=E9axC6M1DCA

* What is a task?
* A task is something we must do to achieve a result.
* In Gulp, we create tasks to perform tasks that can transform our code.
* A task may perform one job; it may also perform many at once.

In our `gulpfile.js` we need to include the `gulp` module. To do this, we should define a variable: `var gulp = require('gulp');` This will allow us to call upon Gulp to **create a task**.

##### My First (Default) Task

After declaring our `gulp` variable, we should create our first task. This will require us to call upon Gulp to define a task. We must also have a name for our task. By *default*, Gulp requires a `default` task. It is the first task that Gulp will look for when reading your `gulpfile.js`. Let's define our first (default) task:

```javascript
var gulp = require('gulp');

//define a task with the name of 'default'
// and a callback to perform when the task is ran
gulp.task('default', function() {
  console.log('I am the default task. Hear me roar');
});
```
([Source](https://github.com/code-for-coffee/gulp_workflows/blob/master/gulpfile_lo3.js))

In your terminal, run `gulp`. This will have the library look for a `default` task in your `gulpfile.js`. It will then execute the callback that you define for your task. The output will appear as follows:

```bash
Starting 'default'...
I am the default task. Hear me roar
Finished 'default' after 144 μs
```
