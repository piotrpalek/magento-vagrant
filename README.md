# vagrant-chef-magento

### username/pass

* magento admin username: mageadmin
* password: password1
* db username: root
* db password: [no password]

### get the tools
* install virtualbox: [https://www.virtualbox.org](https://www.virtualbox.org)
* install vagrant: [http://www.vagrantup.com](http://www.vagrantup.com)
* install git: [http://git-scm.com/downloads](http://git-scm.com/downloads)

### clone this repository
* git clone git@github.com:awesomepeter/magento-vagrant.git {app_dir}

### start vm
 - VM default ip is 192.168.13.37
 - make a local host entry (/etc/hosts or C:\Windows\system32\drivers\ets\hosts) for: 192.168.13.37 magento.local
 - ping magento.local (should work -> 192.168.13.37)
 - open a console
 - got to the {app_dir}
 - fire up your server: "vagrant up"
 - take a break -- this may take a while ;-)
 - point your browser to: http://magento.local
 - done .. gl ;-) 
 
 (Configuration Options see: Vagrantfile form the vagrant-chef-magento repo)
 
### reimport the database
remove the file {app_dir}/db_import/.imported

### mac users
uncomment the line:

	config.vm.share_folder "v-root", "/vagrant", ".", :nfs => true
 
 in the Vagrantfile for better performance
 
