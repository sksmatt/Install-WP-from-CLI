wp_install() {
	latest="http://wordpress.org/latest.zip"
	curl -O $latest 
	unzip latest.zip;rm -rf __MACOSX
	cp -rf ./wordpress/* ./
	mkdir ./wp-content/uploads/
	mv wp-config-sample.php wp-config.php	
	mate wp-config.php
	#open https://api.wordpress.org/secret-key/1.1/salt/
}