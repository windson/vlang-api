# vlang-api


A simple REST API using V lang and vweb

## POST Notes

```curl
curl --location --request POST 'http://localhost:8080/notes/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "message" : "Check the status of the college application",
    "status" : false
}'
```

```curl
curl --location --request POST 'http://localhost:8080/notes/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "message" : "Go to School!",
    "status" : false
}'
```

## Get Notes

```curl
curl --location --request GET 'http://localhost:8080/notes/'
```
