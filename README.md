# Ridgeline Packer Development

### **Warning: This project is a work-in-progress and is not currently functioning (beyond maybe creating a base Ubuntu box)**

Note: Much of this configuration was borrowed from https://github.com/geerlingguy/packer-ubuntu-1604

## Intro

The basic idea would be to create a pre-provisioned Vagrant VirtualBox image via Packer. This would consist of a base Ubuntu 16.04 box with post-provisioning scripts that would install/configure Ghost, Nginx, and MySQL.

We could then include a Vagrantfile in each customer project that would start the VM and mount the customer specific Ghost files. 

## Requirements

You will need the following software installed on your local machine:

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/)
- [Packer](https://www.packer.io/)

## Usage

In theory, we would provision a Vagrant VirtualBox image with a command like:

    $ packer build ridgeline-vagrant-ubuntu-1604-amd64.json

This image would then be stored on an accessible resource (e.g. s3, file share of some sort, etc). We would then point our Vagrantfiles to pull this base image with all of our services preconfigured and it would mount the customer specific codebase. 

This would allow Engineers to start separate Vagrant VMs from within each customer project. 

## ToDo

- Add post-provisiong scripts to install and configure Ghost, Nginx, and MySQL
- Should probably include config management of some sort (Chef, Ansible, etc) to manage this provisioing
- Implement automation that will automatically provision and upload a new Vagrant box whenever the base repo is updated


Created and maintained by David Thornton in 2017
