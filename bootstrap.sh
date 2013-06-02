sudo su
apt-get update
apt-get upgrade --yes 
apt-get install git curl python-pip zsh python-dev --yes

export DEBIAN_FRONTEND=noninteractive

apt-get install libmysqlclient-dev mysql-client mysql-server redis-server --yes


sleep 5
mysql -uroot -e <<EOSQL "UPDATE mysql.user SET Password=PASSWORD('sDk7N4CqcmMAMYyahEufMfk8cnV6huAR') WHERE User='root'; FLUSH PRIVILEGES;"
EOSQL


/etc/init.d/mysql stop
/etc/init.d/mysql start

#curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

pip install virtualenv
#sudo vagrant
#cd /home/vagrant
#virtualenv venv

