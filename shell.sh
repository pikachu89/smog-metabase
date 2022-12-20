# Description: Shell script to run metabase and database

# create directory for database
mkdir -p ./database

# go to database folder
cd ./database

# if database does not exist, download it
if [ ! -f weather.db ]; then
    echo "database.db not found. Downloading..."
    wget https://github.com/abdulsaboor938/smog-metabase/raw/main/weather.db
fi

# go to previous folder
cd ..

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