## 5.2 Building a Web Server


####Agenda

* Web Servers
* Message-Passing and Listening
* Cloud Computing
* Goals
  * Create a cloud-based web server
  * Connect to the cloud based server and configure it
  * Deploy your Sinatra application to the web server
  * Run migrations and update environment / API keys
  * Use Rack host your application for the world to see!
  * Use DNS to assign a domain to your website


####Web Servers

* We've been using web servers for a while ...
* Heroku is the primary example
* Your laptops are also web servers
* You've used Rack (Rackup) to serve applications


#### Message-Passing and Listening

* The internet is a series of messages
* Messages that are passed back and forth
* Web servers **listen** for these messages
* And react appropriately
* For example, Rackup listens on port 9292

#### Cloud Computing

<img src='http://microsoft-news.com/wp-content/uploads/2014/09/Azure-logo.jpg'>

<img src='http://paweljaniak.co.za/images/digitalocean.png'>

#### Cloud Computing

<img src='https://yonatanschultz.com/content/images/2015/01/aws_logo.jpg'>

<img src='https://www.sparkpost.com/blog/wp-content/uploads/2015/06/HerokuLogo.png'>

##### Cloud Computing

* Companies have been investing in infrastructure
* Building out platforms that allow us to spend pennies for processing power
* They build out giant warehouses of small computers
* And we run our web servers on them
* This is extremely cost effective for us!
* But we never own the hardware

#### Today's Goal

**Get your Sinatra project from last week online using Digital Ocean!** You'll also learn how to build a **web server!**

#### Creating a Web Server

* We need to register Digital Ocean accounts
* Sign up for a new account
* GA is going to give you $50 in credits to use!
* Warning: make sure you setup a billing threshold
* Your credit card **could** be charged

#### Learning Objectives
  1. Register for Digital Ocean and get teh monies!@!@12
  2. Identify what Droplets are and how to create one
  3. Work with a remote server (droplet) via command line
  5. Get a working Sinatra app on the web for all to see!
