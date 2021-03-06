* Install Ubuntu
* Run:

     sudo apt-get update
     sudo apt-get install git ansible
     git clone https://github.com/pmitros/configuration.git

* Add (with pico): 

     [localhost]
     127.0.0.1

to `/etc/ansible/hosts`. This should not be necessary, but it is. 

Run `ansible-playbook local.yaml`

Enable ufw firewall. The configuration is in etc/gufw/.... The command is 

     ufw enable
     ufw status verbose

Configure a mysql password:

     dpkg-reconfigure mysql-server-5.5
     emacs ~/.my.cnf
      [client]
      user=[mysqluser]
      password=[mysqlpass]

Manually: 
* noatime in fstab on SSD-mounted drives
* Copy professional fonts to /usr/share/fonts

Google Chrome extensions

* https://chrome.google.com/webstore/detail/adblock-plus/cfhdojbkjhnklbpkdaibdccddilifddb (Block ads)
* https://chrome.google.com/webstore/detail/markdown-preview/jmchmkecamhbiokiopfpnfgbidieafmd (Allow editing .md)
* https://chrome.google.com/webstore/detail/auto-refresh-plus/oilipfekkmncanaajkapbpancpelijih (Make above live)
* http://libraries.mit.edu/about/faqs/remote-proxystring-bookmarklet.html (open journal articles)

Ones I should try: 

* http://www.zotero.org/

XMonad configuration is in xmonad.hs

Emacs is in .emacs
