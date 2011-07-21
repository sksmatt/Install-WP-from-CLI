# Add to ~/.bash_profile

wp_install() {
	latest="http://wordpress.org/latest.zip"
	curl -O $latest 
	unzip latest.zip
	rm -rf __MACOSX latest.zip
	cp -rf ./wordpress/* ./
	rm -rf ./wordpress/ ./wp-content/plugins/hello.php ./readme.html
	mkdir ./wp-content/uploads/
	mv wp-config-sample.php wp-config.php
	touch htaccess.txt robots.txt
	mate wp-config.php
	open https://api.wordpress.org/secret-key/1.1/salt/
}

# Launch virtual hosts files:

vhosts() {
	mate /etc/hosts
	mate /etc/apache2/extra/httpd-vhosts.conf
}