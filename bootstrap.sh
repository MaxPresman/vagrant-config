sudo su
apt-get update
apt-get upgrade --yes 
apt-get install git curl python-pip zsh python-dev xorg --yes

export DEBIAN_FRONTEND=noninteractive

apt-get install libmysqlclient-dev mysql-client mysql-server redis-server cmake --yes
apt-get install language-pack-en --yes
apt-get install openssl libssl-dev --yes
apt-get install dist-upgrade --yes

# update the mysql password
sleep 5
mysql -uroot -e <<EOSQL "UPDATE mysql.user SET Password=PASSWORD('sDk7N4CqcmMAMYyahEufMfk8cnV6huAR') WHERE User='root'; FLUSH PRIVILEGES;"
EOSQL

/etc/init.d/mysql stop
/etc/init.d/mysql start

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# setup node
. /root/.nvm/nvm.sh
nvm install 0.8
nvm install 0.10

# add python packages
pip install virtualenv

apt-get autoremove
apt-get clean

