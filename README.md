# Testerq Test Project
- Centos7
- Tomcat8
- Mysql5.7
- Robotframework
- Docker
- Docker-compose
- Selenium
- RESTFUL+Jmeter
- Appium

# Usage
## install docker & docker-compose on CentOS7
```
# yum install -y docker
# curl -L https://github.com/docker/compose/releases/download/1.24.0-rc3/docker-compose-`uname -s`-`uname -m` > /usr/bin/docker-compose
# chmod +x /usr/bin/docker-compose
```

## Run test Server with docker-compose:
```
# git clone <this project>
# cp -r <this project>/conf/test/mysql /root
# chcon -Rt svirt_sandbox_file_t /root/mysql/
# docker-compose -f  deploy-testenv.yml up -d
# docker cp testerq.war tomcat:/usr/local/tomcat/webapps

```


# 扫一扫关注微信公众号
<img src="https://github.com/ravihuang/pytestprj/blob/master/conf/qrcode.jpg" width="206px" height="283px" style="border: 1px solid black;" />
