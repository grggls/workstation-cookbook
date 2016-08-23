require 'serverspec'
set :backend, :exec

describe command('brew -v') do
end

describe command('aws --version') do
end

describe file('/home/greg.damiani/.aws/') do
end

describe file('/home/greg.damiani/.aws/credentials') do
end

describe file('/home/greg.damiani/.gitconfig/') do
end

describe file('/home/greg.damiani/.chef/') do
end

describe file('/home/greg.damiani/.chef/knife.rb') do
end

describe file('/home/greg.damiani/.chef/encrypted_data_bag_secret') do
end

describe file('/home/greg.damiani/.gnupg') do
end

describe file('/home/greg.damiani/.ssh/') do
end

describe file('/home/greg.damiani/.ssh/config') do
end

describe file('/etc/resolv.conf') do
end

describe file('/etc/hosts') do
end

describe service('jenkins') do
end
