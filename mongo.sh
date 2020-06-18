#!/bin/bash

# For more information, please check the official docs:
# https://docs.mongodb.com/manual/tutorial/install-mongodb-on-debian/

# dirmngr
echo "Installing dirmngr..."
sleep 2
sudo apt-get install dirmngr

echo -e "\nChecking the install...\n"
dirmngr --version
sleep 2

echo -e "\nImporting the public key used by the package management system..."
sleep 2
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
sleep 2

echo -e "\nCreating a /etc/apt/sources.list.d/mongodb-org-4.0.list file for MongoDB..."
sleep 2
echo "deb [arch=amd64] http://repo.mongodb.org/apt/debian stretch/mongodb-org/4.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sleep 2

echo -e "\nReloading local package database..."
sleep 2
sudo apt-get update
sleep 2

echo -e "\nInstalling the MongoDB packages..."
sleep 2
sudo apt-get install -y mongodb-org

echo -e "\nChecking the install..."
sleep 1
mongod --version

sleep 2
echo "If you installed via the package manager,
the directories are created during the installation.

If you installed manually by downloading the tarballs,
you can create the directories using mkdir -p <directory>
or sudo mkdir -p <directory> depending on the user that will run MongoDB.
(See your linux man pages for information on mkdir and sudo.)

By default, MongoDB runs using the mongodb user account.
If you change the user that runs the MongoDB process,
you must also modify the permission to the /var/lib/mongodb
and /var/log/mongodb directories to give this user access to these directories.

To specify a different log file directory and data file directory,
edit the systemLog.path and storage.dbPath settings in the /etc/mongod.conf.
Ensure that the user running MongoDB has access to these directories."

sleep 3
echo -e "\nRUN MONGODB COMMUNITY EDITION\n"

echo "To start MongoDB:"
echo -e "sudo service mongod start\n"
sleep 3

echo "To verify that MongoDB has started successfully:"
echo "Verify that the mongod process has started successfully
by checking the contents of the log file at
/var/log/mongodb/mongod.log for a line reading:"
echo "[initandlisten] waiting for connections on port 27017"
echo -e "\n27017 is the default port the standalone mongod listens on."
echo "You may see non-critical warnings in the mongod output.
As long as you see the log line shown above, you can safely
ignore these warnings during your initial evaluation of MongoDB."

sleep 3
echo -e "\nTo Stop MongoDB:"
echo -e "sudo service mongod stop\n"

sleep 3
echo "To Restart MongoDB:"
echo -e "sudo service mongod restart"

sleep 3
echo -e "\nBegin using MongoDB:"
echo "Start a mongo shell on the same host machine as the mongod.
You can run the mongo shell without any command-line options
to connect to a mongod that is running on your localhost with default port 27017:"
echo -e "mongo\n"

sleep 3
echo -e "For more information, check:\nhttps://docs.mongodb.com/manual/tutorial/install-mongodb-on-debian/"
