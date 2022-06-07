host="fabmedical-643883.mongo.cosmos.azure.com"
username="fabmedical-643883"
password="F4VrFvxNU1rpHUvORlBkysMl4rPm8BfeavhfUFl9vLabT1bj4dBjxT8SXaT1Eckzzyf4vRMbot45ls5pdXx7kw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
