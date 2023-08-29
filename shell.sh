# Description: Shell script to run metabase and database

# metabase operations

# going to metabase folder
cd ./metabase

# if metabase.jar does not exist, download it
if [ ! -f metabase.jar ]; then
    echo "metabase.jar not found. Downloading..."
    wget https://downloads.metabase.com/v0.44.6/metabase.jar
fi

# run metabase
java -jar metabase.jar

# credentials for logging into metabase interface can be found in the credentials.txt file located at the root folder.