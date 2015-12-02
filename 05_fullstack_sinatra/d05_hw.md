## 5.5 Homework: Shopping List

This evening, you're going to build out your shopping list application. This is going to require you to build out a full-stack MVC application in Sinatra. You will need **models**, **controllers**, and **views**. You built out the wireframes for this application earlier in the week; now you're going to code it!

You will create a brand new Github repository (if you do not already have one) for your shopping list.

#### Database Requirements

You must have a database that contains a single table: `items`. We will also add an `accounts` table **later** (do not add this one now). The `items` table should contain the following columns:

* `name` as a String
* `quantity` as an numeric type


#### Technical Requirements

Your application must have the following parts to it:

* Your `migrations.sql` and `seed.sql` should be inside of a `db/` folder in your project.
* ApplicationController to get your application started and connected to your database.
* ItemsController to handle all of the routes to your root (`/`) route and any resources under it. The ItemsController should contain complete CRUD functionality. Users should be able to `create`, `read`, `update`, and `destroy` items on their shopping list.
* Corresponding views for each CRUD action.
* A basic `readme.md` in your repository explaining what the application is.

#### Homework Submission

* Push all of your work online.
* Email your instructors when you have completed the repository. Our email addresses are (for copy-paste): `jamest@ga.co, james.haff@ga.co, adriana.castaneda@ga.co`
* Provide a link to your repository in the email.
* List any problems you encountered that were brand new to you in this email and how you overcame them.

#### Important

We're going to use this project tomorrow to teach you how to add user authentication to your application. This way, a user must be logged in to see their shopping list. Only when they are logged in can they access it!
