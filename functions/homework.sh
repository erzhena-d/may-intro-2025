#!/bin/bash


function k-pop() {
	sudo groupadd blackpink
	sudo sh -c 'for user in jisoo rose jenny lisa; do useradd "$user"; usermod -aG blackpink "$user"; done'
       
}

function wordpress () {
	sudo yum update -y
	sudo yum install -y wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel
	#
	wget https://wordpress.org/latest.tar.gz
	tar -xzf latest.tar.gz
	sudo rm -r /var/www/html/index.html
	sudo mv wordpress/* /var/www/html
	#
	sudo chown -R apache:apache /var/www/html
	sudo chmod -R 755 /var/www/html
	sudo systemctl start httpd
	sudo systemctl enable httpd
	sudo systemctl restart httpd
}	

function binary () {
	sudo yum install tree -y
	tree
	#
	sudo yum install -y yum-utils shadow-utils
	sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
	sudo yum -y install terraform
	terraform -version
}

k-pop
wordpress
binary
