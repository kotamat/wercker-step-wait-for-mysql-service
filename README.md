# Wercker Step wait for Mysql Service

A wercker step to wait for mysql service.

## Example Usage

In your [wercker.yml](http://devcenter.wercker.com/articles/werckeryml/) file before mysql connecting steps and set mysql service:

``` yaml
services:
  - id: mysql
    env:
      MYSQL_ROOT_PASSWORD: secret
      MYSQL_USER: user
      MYSQL_PASSWORD: secret
      MYSQL_DATABASE: dbname
build:
  steps:
    - wait-mysql:
        sleep: 10
        host: "localhost"
        port: 3306
        user: "root"
        password: "secret"
        database: "dbname"
```

## Options

- `sleep` (optional) waiting time each polling (seconds)
  - default: 10
- `host` (optional)
  - default: "$MYSQL_PORT_3306_TCP_ADDR"
- `port` (optional) 3306
  - default: "$MYSQL_PORT_3306_TCP_PORT"
- `user` (optional) "root"
  - default: "root"
- `password` (optional) "secret"
  - default: "$MYSQL_ENV_MYSQL_ROOT_PASSWORD"
- `database` (optional) "dbname"
  - default: "$MYSQL_ENV_MYSQL_DATABASE"
