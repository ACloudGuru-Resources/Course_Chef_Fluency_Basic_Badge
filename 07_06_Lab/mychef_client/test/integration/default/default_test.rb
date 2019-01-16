# # encoding: utf-8

# Inspec test for recipe mychef_client::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root') do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80) do
  it { should_not be_listening }
end

describe command('ps aux | grep chef-client') do
  its('stdout') { should match '/etc/chef/client.rb -i 900 -s 900' }
end