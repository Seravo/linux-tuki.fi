# Linux-tuki.fi website
[![Build Status](https://travis-ci.org/Seravo/linux-tuki.fi.svg?branch=master)](https://travis-ci.org/Seravo/linux-tuki.fi)

Using project template by [Seravo.com](https://seravo.com).

## Documentation

Please see the documentation at https://seravo.com/docs/ for more info.

## Installation

### MacOS

1. [Install Xcode](https://developer.apple.com/xcode/downloads/)
2. [Install Vagrant](http://docs.vagrantup.com/v2/installation/)
3. [Install Virtualbox](https://www.virtualbox.org/wiki/Downloads)
4. Clone this repo
5. Run the installation in terminal:
```
$ vagrant plugin install vagrant-hostsupdater vagrant-triggers vagrant-bindfs
$ vagrant up
```

### Linux (Ubuntu/Debian)

To use virtualbox make sure you have ```vt-x``` enabled in your bios.

```
sudo apt-get install -y vagrant virtualbox virtualbox-dkms
git clone https://github.com/Seravo/wordpress ~/wordpress-dev
cd ~/wordpress-dev
vagrant plugin install vagrant-hostsupdater vagrant-triggers vagrant-bindfs
vagrant up
```

### Linux (CentOS/RHEL/Fedora)

Add RPMFusion repositories. See  [RpmFusion](http://rpmfusion.org/). Repository is
needed for Virtualbox.

Clone the wordpress Git repo and run following commands:

```
sudo yum install vagrant virtualbox ruby-devel
sudo gem update bundler
sudo gem install hittimes -v '1.2.2'
vagrant plugin install vagrant-hostsupdater vagrant-triggers vagrant-bindfs
sudo modprobe vboxdrv #Need to load the kernel module for virtualbox, you may want to load it automatically on boot...
vagrant up
```

### Linux (General)

If you get errors related to creating host-only network adapters during vagrant up, run ```sudo vboxreload```.
It seems that sometimes virtualbox kernel modules are not working correctly after the machine wakes up from sleep.


### Windows (Cygwin)

To use virtualbox make sure you have ```vt-x``` enabled in your bios.
You might need to disable ```hyper-v``` in order to use virtualbox.

1. [Install Vagrant](http://docs.vagrantup.com/v2/installation/) (**1.7.4 or later**)
2. [Install Virtualbox](https://www.virtualbox.org/wiki/Downloads)
3. Clone this repo
4. Do the installation in terminal:
```
$ vagrant plugin install vagrant-hostsupdater vagrant-triggers
$ vagrant up

In theory, Seravo WordPress should work even without cygwin installed, but we strongly recommend using Cygwin for doing WordPress development on Windows machines.

# Answer (y/n) for interactive installation script
```


### All platforms

Once you have Vagrant up and running, you need to manually build assets with:
```
# Enter Vagrant
vagrant ssh
# Change to theme directory
/data/wordpress/htdocs/wp-content/themes/linuxtuki
# Install Node.js dependencies
yarn
# Build assets
webpack --config assets/webpack/production.js --progress
```

@TODO: The current contents of project package.json and theme package.json does not yet match the actual Node.js dependencies this project has or what it needs to build.

### Credentials for vagrant

WordPress:
```
user:     vagrant
password: vagrant
```

MariaDB (MySQL):
```
user:     root
password: root
```

## Vagrant base database

This project includes `vagrant-base.sql` as a base template for the database. It is stripped down and cleaned up version of an early Linux-tuki.fi production database.

Cleanup commands used among others:
```
sed "/'auto-draft'/d" -i vagrant-base.sql
sed "/'revision'/d" -i vagrant-base.sql
sed '/_edit_last/d' -i vagrant-base.sql
sed '/_edit_lock/d' -i vagrant-base.sql
sed -r '/INSERT INTO `wp_options` VALUES \([0-9]+,'\''_transient_/d' -i vagrant-base.sql
```

Also remember to replace all real users with the vagrant dummy user, and clean away production key (nonce, secure_auth, logged_in) material, like the session keys or GAWDP authentication keys.
