## Installing MongoDB

**MongoDB**: https://mongodb.org/

To install MongoDB, we need to install it and create a folder for the database.
We've provided an automated install script here: https://github.com/ga-chicago/MongoDBInstallScript/

*Annotated version of the script*
```bash
echo -e "*** Hi! This script will install MongoDB."
echo -e "You could be asked for your admin password up to four times."
# update homebrew
brew update
# use homebrew to install
echo -e "Installing MongoDB"
sudo brew install mongodb -Y
# create the mongodb swap directory
echo -e "Creating the MongoDB directory..."
sudo mkdir -p /data/db
# set read/write permissions for this directory to root
echo -e "Setting Permissions to the /data/* directory for MongoDB"
sudo chmod -777 /data/*
# start mongodb!
echo -e "Starting Mongod..."
sudo mongod
```

If you run into any problems during installation, please refer to this document: http://docs.mongodb.org/manual/tutorial/install-mongodb-on-os-x/

#### Starting MongoDB
To start mongodb, simply run the following command: `sudo mongod`. Use CTRL-C to stop the service.
