cd
mkdir devstack
cd devstack
curl -L https://raw.githubusercontent.com/edx/configuration/master/vagrant/release/devstack/Vagrantfile > Vagrantfile
# https://www.virtualbox.org/wiki/Downloads
wget http://download.virtualbox.org/virtualbox/4.3.32/virtualbox-4.3_4.3.32-103443~Ubuntu~raring_amd64.deb
wget https://releases.hashicorp.com/vagrant/1.7.4/vagrant_1.7.4_x86_64.deb
sudo dpkg -i virtualbox-4.3_4.3.32-103443~Ubuntu~raring_amd64.deb
sudo dpkg -i vagrant_1.7.4_x86_64.deb
vagrant plugin install vagrant-vbguest
vagrant up
