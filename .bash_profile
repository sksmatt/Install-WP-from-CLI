wp_install() {
	latest="http://wordpress.org/latest.zip"
	curl -O $latest 
	unzip latest.zip
	rm -rf __MACOSX latest.zip
	cp -rf ./wordpress/* ./
	rm -rf ./wordpress/
	mkdir ./wp-content/uploads/
	mv wp-config-sample.php wp-config.php
	touch .htaccess	
	mate wp-config.php
	open https://api.wordpress.org/secret-key/1.1/salt/
}