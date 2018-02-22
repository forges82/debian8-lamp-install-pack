# debian8-lamp-install-pack

## First step

```
apt-get update
apt-get install git -y
mkdir /opt/script
cd /opt/script
git clone https://github.com/forges82/debian8-lamp-install-pack.git
cd /opt/script/debian8-lamp-install-pack
chmod +x install.sh
mv example.com.conf /etc/apache2/sites-available/
./install.sh
```
