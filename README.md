# stunnel-rediscli
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/pideoh/stunnel-rediscli/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/pideoh/stunnel-rediscli/tree/main)

```
docker run -itd --name redis-cli -e STUNNEL_CONNECT=example.com:6380 pideoh/stunnel-rediscli
docke exec -it redis-cli redis-cli -h localhost 
```
