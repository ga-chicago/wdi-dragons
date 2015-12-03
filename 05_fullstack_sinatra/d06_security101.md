
## 5.6 Server-side Authentication

####Agenda

*	Quiz
* So we have these secure resources
* How can we lock them safely?
* Public vs API Key vs Users/Roles
* Today's Goals
  * Understand how to make logging in enjoyable
  * Implement UserModels and Account Registration
  * Gatekeeping Resources


####QUIZ
1.	What is the primary difference between the HTTP Verbs `get` and `post`?
2. What is a **Postback**?
3. What is the primary difference between an Ajax request and a Postback?
4. If MVC were smores, models would be the graham cracker and the views would be chocolate. What is the controller?
5. HTML Input Elements have a `name` attribute that binds to what hash in Ruby when passed to the server as request?



#### So we have these secure resources

Imagine that you work for a bank. You can't let customer's balance information run wild, could you? No.

* **We should lock them up!**
* Keep them under wraps.
* We don't want to get sued, do we?

#### How can we lock them safely?

There are many ways to lock resources away from the general public. A few of these patterns are:

* Public APIs - hey, just let the data be free *man**!
* Requiring API keys - maybe we want people to have access to resources but want to throttle their usage.
* Users accounts and various roles - great for complex applications that have different levels of use.


#### Public Resources

* Open source
* Share as much as you want
* Usually run on donations or sponsorship
* Usually projects of love and happiness
* Small, dedicated teams


#### API Keys

* Web servers can be expensive
* We strive to share our data
* Maybe for free? OMDB, OpenWeatherMap, City of Chicago
* Maybe profit? Companies want to charge for their proprietary data
* Either way, API keys are great for requiring some level of authorization


#### Users and Role Infrastructure

* We have a lot of roles
* Maybe some roles do different jobs
* Our computers do this, right?
* Maybe we want to let admins curate content
* But allows registered users to post content
* And to hide content until someone signs up?
* User accounts and roles allow for us to handle these situations


#### Today's Goals

* Understand how to make logging in enjoyable
* Implement UserModels and Account Registration
* Gatekeeping Resources
 * Require Registeration to access resources
 * Legal reasons
 * Competitive Reasons
 * HIPAA and other data retention laws
 * HTTPS warning!
 * Implementing `is_authorized` as a **filter**


#### Understand how to make logging in enjoyable
 * Or at least, not frustration/annoying
 * User Story: Registration and Logging In
 * Mock out our Views
 * Create our Views in ERB



#### Implement UserModels and Account Registration

 * We'll need a new table in our database
 * And a new Model!
 * And learn how to securely work with passwords
 * HTTPS warning!
 * Build controllers to bind the model to the view

#### Gatekeeping Resources

 * Require Registeration to access resources
 * Legal reasons
 * Competitive Reasons
 * HIPAA and other data retention laws
 * HTTPS warning!
 * Implementing `is_authorized` as a **filter**
