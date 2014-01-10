# Install security fixes
sudo apt-get update
sudo apt-get upgrade

# Fix apt cache issues, and again
sudo sudo mv /var/lib/apt/lists /var/lib/apt/lists.old
sudo mkdir -p /var/lib/apt/lists/partial

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

apt-get install -r ../apt-requirements.txt

sudo adduser pmitros --disabled-password --gecos ""

echo "pmitros ALL=(ALL) NOPASSWD:ALL" > /tmp/sudoers.pm
sudo cp /tmp/sudoers.pm /etc/sudoers.d/90-pmitros
sudo chown root:root /etc/sudoers.d/90-pmitros
sudo chmod 440 /etc/sudoers.d/90-pmitros
service sudo restart

sudo mkdir ~pmitros/.ssh
sudo chown pmitros:pmitros ~pmitros/.ssh
sudo chmod 700 ~pmitros/.ssh
sudo cp keys/authorized_keys ~pmitros/.ssh
sudo chown pmitros:pmitros ~pmitros/.ssh/*
sudo chmod 600 ~pmitros/.ssh/*



## Optional: Set up raid
yes | sudo mdadm   --create /dev/md0   --level 0   --metadata=1.1   --chunk 256   --raid-devices=2 /dev/xvdc /dev/xvdd
mkfs.xfs /dev/md0
mount /dev/md0 logs/
