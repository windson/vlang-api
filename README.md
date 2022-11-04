# vlang-api

A simple REST API with CRUD operations using V lang and vWeb

Author: Navule Pavan Kumar Rao [🤵](https://bit.ly/3d17tZP)

[![Twitter Follow](https://img.shields.io/twitter/follow/tutlinksdotcom?style=social)](https://twitter.com/tutlinksdotcom)
[![YouTube Channel](https://img.shields.io/badge/YouTube-Subscribe-red)](http://bit.ly/2Uc0YNk)

## Tutorial Series


| Code (branch) 💻 | Video 📺 | Article 📝 |
|----------|-------------|------|
| [main](https://github.com/windson/vlang-api) | [How to deploy V lang REST API on Azure](https://bit.ly/3WvWYF3) | [How to deploy V lang REST API on Azure – TutLinks](https://bit.ly/3NyllOv) |
| [vweb-cloud-run](https://github.com/windson/vlang-api/tree/vweb-cloud-run) | [Deploy V lang CRUD REST API with PostgreSQL on GCP Cloud Run](https://bit.ly/3sXXuy9) | []() |


## CURL Commands

### POST Notes

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

### GET Notes

```curl
curl --location --request GET 'http://localhost:8080/notes/'
```

### GET Notes by Id

```curl
curl --location --request GET 'http://localhost:8080/notes/1'
```
