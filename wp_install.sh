latest="http://wordpress.org/latest.zip"
curl -O $latest 
unzip latest.zip
rm -rf __MACOSX latest.zip #osx only
cp -rf ./wordpress/* ./
rm -rf ./wordpress/ ./wp-content/plugins/hello.php ./readme.html
mkdir ./wp-content/uploads/
mv wp-config-sample.php wp-config.php
touch htaccess.txt robots.txt
open https://api.wordpress.org/secret-key/1.1/salt/
