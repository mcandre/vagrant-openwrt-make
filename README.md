# vagrant-openwrt-make: a Vagrant box with uClibC/Linux (OpenWrt) + GNU make

# VAGRANT CLOUD

* https://app.vagrantup.com/mcandre/boxes/vagrant-openwrt-make-amd64
* https://app.vagrantup.com/mcandre/boxes/vagrant-openwrt-make-i386

# EXAMPLE

```console
$ cd amd64/test
$ vagrant up
$ vagrant ssh -c "cd /vagrant && make"
Works!
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Synced folders note

This box requires an additional explicit chown to fix guest file permissions:

```console
$ vagrant ssh -c "sudo find /vagrant -exec chown vagrant:vagrant {} +"
```

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ sh -c "cd amd64 && make vagrant-openwrt-make-amd64.box"
$ sh -c "cd i386 && make vagrant-openwrt-make-i386.box"
```
