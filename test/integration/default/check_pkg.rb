describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_running }
end

describe service('nginx') do
  it { should be_enabled }
end

describe file('/etc/nginx') do
  it { should be_directory }
end

describe nginx do
  its('version') { should eq '1.10.3' }
end

describe nginx do
  its('support_info') { should match /TLS/ }
end
