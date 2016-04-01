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
Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"
end
```

#### Running
* vagrant up
* vagrant ssh

#### Stopping
* vagrant halt

#### Checking Status
* VBoxManage list vms
    * Get all instances by name and UUID
* VBoxManage list runningvms
    * Get all running instances by name and UUID

## Environment Configuration Script

* Create a script that install dependencies: install.sh
* Run the script once your VM instance is up: ./install.sh
* In your VM, cd to /vagrant (the shared folder)
* Edit code from your favorite editor on the hostmachine!

## Using an environment from this repository

* Make sure you followed the installation steps for Vagrant and VirtualBox.
* Download the vagrantfile and install script from one of the environments provided in this repo.
* Follow the rest of the setup steps.

## Contributing
* Add your environment under 'environments/<name>'.
* Include an 'install.sh' script
* Include a 'README.md' that provides description of your environment, a list of dependencies are your script installs, and the box your script uses. Feel free to add any additional notes.
* See the current environments for a template.
* Submit a pull request!

