sudo yum install -y epel-release
sudo yum install -y nginx
mkdir /srv/site1
mkdir /srv/site2
touch /srv/site1/index.html
touch /srv/site2/index.html
echo "wsh le site 1" > /srv/site1/index.html
echo "wsh le site 2" > /srv/site2/index.html
nginx

