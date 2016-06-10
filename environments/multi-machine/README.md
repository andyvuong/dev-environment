## multi-machine

### Description
Set up and manage multiple VMs with a single Vagrantfile.

### Box
* ubuntu/trusty64 (Official Ubuntu 14.04 LTS)

### Running
* A multi-machine set up changes some of the commands you'll use to start your vms.
* ```vagrant up``` starts all machines defined in your vagrant file
* ```vagrant up <machineName>``` as defined in your Vagrantfile to start that machine (Likewise for halt, destroy, etc)

### Info
* dh1 (hostname, port forwarded 3000)
* dh2 (hostname, port forwarded 4000)

### Notes
* Removed the documentation from the Vagrantfile since I'm assuming you're already familiar with Vagrant if you want to use this environment. 
* Use ```ifconfig``` and ```uname -n``` to check the inet address and hostname from your VM.
