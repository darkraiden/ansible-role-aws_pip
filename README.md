Ansible Role AWS cli
=========

Ansible role which installs and configure the AWS cli.

Requirements
------------

None

Dependencies
------------

* [darkraiden.ansible-pip](https://galaxy.ansible.com/darkraiden/ansible-pip)

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

```
aws_cli_name: awscli
```

Name of the AWS cli package to be installed by `pip`.

```
aws_cli_users: {}
```

This dictionary will configure the `.aws/credentials` file for each defined user. It accepts the following parameters:

* **username** - the user name (Required);
* **group** - The creds file's group, if not defined it will use the username as default group;
* **access_key** - AWS Access Key ID; and
* **secret_key** - AWS Secret Access Key.

```
aws_cli_config: {}
```

This dictionary will configure the `.aws/config` file for each defined user. It accepts the following parameters:

* **output** - The aws cli's output format; and
* **region** - The AWS region.

Test Kitchen
--------------

### Install Deps

```
$ bundle
```

### VMs

This kitchen configuration comes with different VMs:

* centos7
* xenial

If you want to test the role using all of those machines, just run the commands below as they are. If you want to test the role on one system only, append to the commands below the VM name.

e.g.

```
$ bundle exec kitchen converge centos7
```

To converge the `centos7` VM only.

### Create the VM

```
$ bundle exec kitchen create
```

### Converge your role

```
$ bundle exec kitchen converge
```

### Run serverspec tests

```
$ bundle exec kitchen verify
```

**NB**: To run `verify` the VM must be converged first.

### Destroy the VM

```
$ bundle exec kitchen destroy
```

### Run Create/Converge/Verify/Destroy in one command

```
$ bundle exec kitchen test
```

### Write your tests

You can write your own test by adding a new file or editing the existing one living in the `test/integration/pip/serverspec/localhost` directory. More info about how to write serverspec test can be found [here](http://serverspec.org/).

Example Playbook
----------------

```
    - hosts: all
      roles:
         - { role: darkraiden.ansible-aws_cli }
```

License
-------

BSD

Author Information
------------------

An optional sectiThis role was created in 2017 by [Davide Di Mauro](https://github.com/darkraiden).on for the role authors to include contact information, or a website (HTML is not allowed).
