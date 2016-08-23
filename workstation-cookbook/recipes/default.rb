#
# Cookbook Name:: workstation-cookbook
# Recipe:: default
#
# Copyright (C) 2015 Gregory Damiani
#
# All rights reserved - Do Not Redistribute
#

log 'message' do
  message 'begin workstation configuration'
  level :info
end

git_client 'default' do
  action :install
end

chef_dk 'default' do
  version '0.14.25'
  global_shell_init true
  action :install
end

%w(
  ansible19
  awscli
  cli53
  gnu-sed
  gnupg
  gnuplot
  gpg-agent
  httpie
  imagemagick
  keybase
  openssl
  siege
  wget
  sip
).each do |pkg|
  homebrew_package pkg do
    action :install
  end
end
