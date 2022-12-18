cd ./metabase
if [ ! -f metabase.jar ]; then
    echo "metabase.jar not found. Downloading..."
    wget https://downloads.metabase.com/v0.44.6/metabase.jar
fi
java -jar metabase.jar