if grep --quiet virtualenvwrapper /home/pmitros/.bashrc; then
  echo "virtualenvwrapper already in bashrc"
else
  echo source /usr/local/bin/virtualenvwrapper.sh >> /home/pmitros/.bashrc
  echo "Added virtualenvwrapper to bashrc"
fi
