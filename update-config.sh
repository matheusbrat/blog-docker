#!/bin/sh
cp wordpress.matbra.com/wp-config.php wordpress.matbra.com/wp-config-bkp.php

sed -i -e "s/getenv('DATABASE_NAME')/'$DATABASE_NAME'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('DATABASE_USER')/'$DATABASE_USER'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('DATABASE_PASSWORD')/'$DATABASE_PASSWORD'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('DATABASE_HOST')/'$DATABASE_HOST'/g" wordpress.matbra.com/wp-config.php

sed -i -e "s/getenv('WP_AUTH_KEY')/'$WP_AUTH_KEY'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('WP_SECURE_AUTH_KEY')/'$WP_SECURE_AUTH_KEY'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('WP_LOGGED_IN_KEY')/'$WP_LOGGED_IN_KEY'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('WP_NONCE_KEY')/'$WP_NONCE_KEY'/g" wordpress.matbra.com/wp-config.php

sed -i -e "s/getenv('WP_AUTH_SALT')/'$WP_AUTH_SALT'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('WP_SECURE_AUTH_SALT')/'$WP_SECURE_AUTH_SALT'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('WP_LOGGED_IN_SALT')/'$WP_LOGGED_IN_SALT'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('WP_NONCE_SALT')/'$WP_NONCE_SALT'/g" wordpress.matbra.com/wp-config.php

sed -i -e "s/getenv('AWS_S3_BUCKET')/'$AWS_S3_BUCKET'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('AWS_S3_KEY')/'$AWS_S3_KEY'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('AWS_S3_SECRET')/'$AWS_S3_SECRET'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('AWS_S3_REGION')/'$AWS_S3_REGION'/g" wordpress.matbra.com/wp-config.php
sed -i -e "s/getenv('S3_UPLOADS_BUCKET_URL')/'$UPLOADS_BUCKET_URL'/g" wordpress.matbra.com/wp-config.php

