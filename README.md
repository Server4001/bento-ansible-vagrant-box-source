# bento-ansible-vagrant-box-source

## Source environment for my bento-ansible vagrant box. A box based on bento/centos-6.7 v2.2.7, but with Ansible installed.

**NOTE:** This is the environment used to build the Vagrant box. If you are looking for a CentOS environment with Ansible installed, just use the box: [server4001/bento-ansible](https://atlas.hashicorp.com/server4001/boxes/bento-ansible).

### Versions

* Ansible v2.2.1.0

### Instructions

* `vagrant up`
* Make any changes you need to the box. Be sure to reflect these changes in the provisioning scripts.
* Before packaging up the box, ssh in, and run the commands that are in the comments at the end of this readme.
* Package up the box with `vagrant package --output bento-ansible-0.3.0.box`. Replace `0.3.0` with the version number.
* Destroy the vm with `vagrant destroy --force`.
* Add the new box to vagrant's local list with: `vagrant box add bento-ansible-030 bento-ansible-0.3.0.box`. Again, replace `030` and `0.3.0` with the version number.
* Delete the `.vagrant` folder with `rm -rf .vagrant`.
* Test out the box by going to a different folder, running `vagrant init bento-ansible-030`, and changing the `Vagrantfile` to fit your needs. Next, run `vagrant up`, and ensure everything is working.
* Create a new version on Atlas.
* Add a new provider to the version. The type should be `virtualbox`. Upload the `.box` file output by the `vagrant package` command above.

### Pre-packaging commands

* `sudo yum clean all`
* `sudo dd if=/dev/zero of=/bigemptyfile bs=1M`
* `sudo rm -rf /bigemptyfile`
* `sudo su`
* `history -c && exit`
* `cat /dev/null > ~/.bash_history && history -c && exit`

### Changes in this version (v0.3.0)

* Bump Ansible version from v1.9.6 to v2.2.1.0

