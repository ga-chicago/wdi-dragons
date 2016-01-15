## Node Deployment

`PORT=8080 nohup npm start &`

#### wat

* We are temporarily defining a `process.env.PORT` by specifying PORT=8080. This tells our terminal that we have an environment variable called **PORT**. We then just specify a value.
* We use our friend `nohup` to pass the process on to a different thread on the operating system. Closing the application is no longer a problem!
* Next, we just run `npm start` as per usual.
* We end the command with ` &`; this just lets `nohup` know to start the service in the background. It results in you being able to use your shell session without worrying about the script blocking you from executing commands.

#### Production Example

* On your server...
* `PORT=80 nohup npm start &`
