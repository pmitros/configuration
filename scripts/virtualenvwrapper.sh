## If we've already done it, return
if grep --quiet virtualenvwrapper /home/pmitros/.bashrc; then
  echo "virtualenvwrapper already in bashrc"
    exit 0
else
  ## Loop over locations where different versions of Ubuntu stick the file...
  for location in /usr/share/virtualenvwrapper/virtualenvwrapper.sh /usr/local/bin/virtualenvwrapper.sh
  do
    ## And if it exists in a given location, add it to .bashrc
    if [ -a $location ] ; then
      echo source $location >> /home/pmitros/.bashrc
      echo "Added virtualenvwrapper to bashrc"
      exit 0
    fi
  done
fi

## It's not in .bashrc, and we failed to find it. Terminate. 
echo "Failed."
exit 1
