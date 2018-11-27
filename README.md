# ee-vagrant

This Vagrant repo spins up a CentOS 7 VM using Virtualbox and via Puppet installs the latest Jenkins LTS.

## Prerequisites

You need to ensure you have installed:

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [Vagrant vbguest Plugin](https://github.com/dotless-de/vagrant-vbguest)

## Running the VM

To start the VM, from the repository directory run:

```sh
vagrant up
```

After some time the VM will be available and you can browse to Jenkins on `http://localhost:8080`.

To get the initial Admin password for Jenkins run this command:

```sh
vagrant ssh -c 'sudo cat /var/lib/jenkins/secrets/initialAdminPassword'
```

## Destroying the VM

To destroy the VM run the following command:

```sh
vagrant destroy
```

and confirm when prompted.

>NOTE: If you do this the VM will be gone for good and if you want Jenkins back you will have to create a new VM as above and go through the first run setup all over again. If you just want to shut down the VM instead use `vagrant halt` instead.
