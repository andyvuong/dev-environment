# dev-environment

This repository serves as guide to setting up a developent environment with Vagrant. It also provides custom vagrantfiles and setup scripts for vagrant instances. To contribute your own development environment setup, please see the contributing section below.

## Setting up Vagrant

#### Resources
* https://www.vagrantup.com/docs/getting-started/
* https://www.vagrantup.com/docs/getting-started/project_setup.html
* https://atlas.hashicorp.com/boxes/search

#### Installing
* Instal VirtualBox
* Install Vagrant

#### Installing a Box
* vagrant box add <box> 

#### Configuring the Vagrantfile
* Configure project to use a specific box as a base.

```
  config.vm.box = "hashicorp/precise64"
```
* Set up port fowarding on your vm
```
  config.vm.network "forwarded_port", guest: 3000, host: 3000
```

#### Running
* vagrant up
* vagrant ssh

#### Stopping
* vagrant halt
    * run from your host

#### Managing VMs
* VBoxManage list vms
    * Get all instances by name and UUID
* VBoxManage list runningvms
    * Get all running instances by name and UUID
* VBoxManage unregistervm --delete "\<name of machine>\"

## Environment Configuration Script & Installing Dependencies
* Once you complete the setup steps, you can create a setup script install.sh
* Once completed, ssh into your running Vagrant instance. 
* cd to /vagrant (where the shared folder is)
* Run your install script with
    * sh install.sh
* Run this script on every instance of your environment for and update it regularly to maintain consistency among your developers.
* Open an editor on your host machine and begin developing!


## Using an environment from this repository
* Make sure you followed the installation steps for Vagrant and VirtualBox.
* Download the vagrantfile and install script from one of the environments provided in this repo.
* Follow the rest of the setup/install steps.

## Contributing
* Add your environment under environments/\<name\>.
* Include an install.sh script
* Include a README.md that provides description of your environment, a list of dependencies are your script installs, and the box your script uses. Feel free to add any additional notes.
* See the current environments for a template.
* Submit a pull request!

## About
Author:
* Andy Vuong
