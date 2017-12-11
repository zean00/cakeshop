if [ ! -f data/local/application.properties ]; then
    if [ "$GETH_URL" = "" ]
    then
        echo $'\n'geth.url=http\://localhost\:8545 >> application.properties
    else
        echo $'\n'geth.url= $GETH_URL >> application.properties
    fi
    mkdir -p data/local && cp application.properties data/local
fi

java -jar cakeshop-0.10.0.war