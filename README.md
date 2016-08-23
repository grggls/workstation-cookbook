# Workstation Cookbook

Sets up a Mac OS X machine for doing work.

## Installation

Consider this a bootstrapping: you'll need some form of Chef in order to run this cookbook:

```
root ~# curl -L https://www.opscode.com/chef/install.sh | bash
Thank you for installing Chef!
root ~# exit
~$ # be root less
```

The other requirement is some form of git client, although you can grab a tarball of this repo if you're really into extra steps

```
~$ git clone git@github.com:grggls/workstation-cookbook.git
~$ cd cookbooks
cookbooks$ less README.md # looks like you're here already
cookbooks$ sudo chef-client --local --config solo.rb --json-attributes workstation.json --log_level info
```

## Step 3

$$$
