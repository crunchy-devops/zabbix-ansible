# Zabbix-ansible

Deployment of a zabbix Sandbox 

![zabbix_architecture](screenshots/sandbox.png)


### Pre-requis pour installer un virtualenv, Ansible
```shell
sudo apt update   # update all packages
sudo apt -y install python3-venv
sudo apt-get -y install git wget htop iotop iftop

#fork and clone ---> git clone https://github.com/crunchy-devops/zabbix-ansible.git
git clone https://github.com/<your_repo>/zabbix-ansible.git
cd zabbix-ansible
python3 -m venv venv # set up the module venv in the directory venv
source venv/bin/activate # activate the python virtualenv
pip3 install wheel # set for permissions purpose
pip3 install ansible # install ansible
ansible --version  # check version number , should be the latest 2.13.1+
ansible-playbook -i inventory playbook.yml  # run a playbook

cd zabbix-ansible
source venv/bin/activate # activate the python virtualenv
docker ps 
```


