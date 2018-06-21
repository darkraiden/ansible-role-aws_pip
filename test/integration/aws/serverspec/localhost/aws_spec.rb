require 'serverspec'
set :backend, :exec

describe user('test') do
    it { should exist }
end

describe file('/home/test/.aws/credentials') do
    it { should exist }
    its(:content) { should match /aws_access_key_id(\s+)?=(\s+)?anAccessKey/ }
    its(:content) { should match /aws_secret_access_key(\s+)?=(\s+)?aSecretKey/ }
end

describe file('/home/test/.aws/config') do
    it { should exist }
    its(:content) { should match /output(\s+)?=(\s+)?json/ }
    its(:content) { should match /region(\s+)?=(\s+)?eu-west-1/ }
end

describe file('/root/.aws/credentials') do
    it { should exist }
    its(:content) { should match /aws_access_key_id(\s+)?=(\s+)?anAccessKey/ }
    its(:content) { should match /aws_secret_access_key(\s+)?=(\s+)?aSecretKey/ }
end

describe file('/root/.aws/config') do
    it { should exist }
    its(:content) { should match /output(\s+)?=(\s+)?json/ }
    its(:content) { should match /region(\s+)?=(\s+)?eu-west-1/ }
end
