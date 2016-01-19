

## Project: A Gulp Workflow that supports ES6 and Modules for the Web

We're going to include a few external modules to create a Gulp workflow. Our workflow will support:

* Node-style `require()` statements using **Browserify**.
* Support ES6 (ES2016) and JSX (for React.js) using **Babelify** (and a few Babel plugins).
* Compile individual modules together using **vinyl-source-stream**.

We need to install a variety of modules. The installation commands are:
* `npm install --save-dev browserify`
* `npm install --save-dev babelify`
* `npm install --save-dev babel-preset-es2015 babel-preset-react`
* `npm install --save-dev vinyl-source-stream`

We can then add our modules to our `gulpfile.js`:

```javascript
var gulp = require('gulp');
var browserify = require('browserify');
var babelify = require('babelify');
var source = require('vinyl-source-stream');
```

We're all set with our dependencies. Now, it is time to create a file structure for our project. We should create a folder called `source` for our actual Javascript application. We'll create an `app.js` in that source directory. We should also create a `build` folder to contain our final, production-ready Javascript file.

`touch source/.gitkeep build/.gitkeep source/app.js`

You'll notice that there is currently no file inside of our `build` directory other than a `.gitkeep`. We should define a task that will use the installed modules to transform our code and make it usable on the front-end. We should update our `gulpfile.js`'s **default** task.

```javascript
gulp.task('default', function() {
  return browserify('./source/app.js')
        .transform("babelify", {presets: ["es2015", "react"]})
        .bundle()
        .pipe(source('build.js'))
        .pipe(gulp.dest('./build/'))
});
```

Let's identify what is going on inside of our **default** task:
* The task uses **browserify** to include our modules that are required in our `source/app.js` file.
* It then transforms any ES6 (ES2015) and React JSX templates into usable code on the client side. This usually translates our modern Javascript code into ES5 that most current evergreen browsers support.
* The task then bundles our files together.
* Next, the task creates a file called `build.js`.
* Gulp finally places the `build.js` inside of a destination (`dest`) folder of `build/`.
* [The full version of this Gulpfile.js may be found here](https://github.com/code-for-coffee/gulp_workflows/blob/master/gulfpile_lo4.js).

Run `gulp` in your terminal. Inspect the `build/build.js` file. *What do you see?*

#### Verifying that everything works

Let's write some ES6. We'll then use **gulp** to run tasks that will create a file prepared for the client side. To verify everything works, we can run the script generated in the console.

In my `app.js`, I want todefine an ES6 class called HelloWorld. The class should have a toString() method that returns 'Hello, world!'. I will then instantiate a new instance of the class and console log the `toString()` method that it contains.

```javascript
// define an ES6 class called HelloWorld
class HelloWorld {
  // define a toString() method on the class
  toString() {
    return 'Hello, world!';
  }
}
// instantiate a new instance of HelloWorld
var sample = new HelloWorld();
// console.log sample's toString() method
console.log(sample.toString());
```
([Source](https://github.com/code-for-coffee/gulp_workflows/blob/master/app.js))

Now, we should run `gulp` in the terminal. Upon completion, open the `build/build.js` file. It will contain a large amount of obfuscated code such as `(function e(t,n,r){function s(o,u)....`. Copy and paste this code into a browser's Javascript console. Inside the console, you should see `Hello, world!`. 

#### Tips and Tricks

* You will need to re-run the `gulp` command every time you make a change.
* There is `nodemon` support for gulp.
* You can have `gulp` **watch** files for changes using [gulp-watch](https://www.npmjs.com/package/gulp-watch).
