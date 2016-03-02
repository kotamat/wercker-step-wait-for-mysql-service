#!/bin/bash

php -r "function mloop(\$c= 1) { try { new PDO('mysql:host=$WERCKER_WAIT_MYSQL_HOST;port=$WERCKER_WAIT_MYSQL_PORT;dbname=$WERCKER_WAIT_MYSQL_DATABASE;charset=utf8','$WERCKER_WAIT_MYSQL_USER','$WERCKER_WAIT_MYSQL_PASSWORD', array(PDO::ATTR_EMULATE_PREPARES => false)); } catch (PDOException \$e) { echo 'fail count:'. \$c. PHP_EOL; sleep($WERCKER_WAIT_MYSQL_SLEEP); mloop(++\$c); } } mloop();"
