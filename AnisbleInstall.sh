sudo su
yum update
yum install -y git
cd /usr/local/src
yum -y install git python-jinja2 python-paramiko PyYAML make MySQL-python
git clone git://github.com/ansible/ansible.git
cd ansible
git submodule update --init --recursive
make install
CTRL + D
sudo echo "[localhost]" > ~/ansible_hosts
sudo echo "localhost ansible_connection=local" >> ~/ansible_hosts
export ANSIBLE_INVENTORY=~/ansible_hosts
sudo vim /etc/ansible/hosts 
[127.0.0.1]
127.0.0.1 ansible_connection=local

[localhost]
127.0.0.1 ansible_connection=local
export AWS_ACCESS_KEY_ID='AK123'
export AWS_SECRET_ACCESS_KEY='abc123'
