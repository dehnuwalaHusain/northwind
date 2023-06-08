for file in json/*.json
do
    filename=$(basename "$file")
    collection="${filename%.*}"
    
    echo $filename
    mongoimport --host "127.0.0.1:27017" -u "root" -p "somestrongpassword" --authenticationDatabase "admin" -d "$1" -c "$collection" --type json --file "$file"
done

