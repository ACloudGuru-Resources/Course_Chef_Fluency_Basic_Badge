# # encoding: utf-8

# Inspec test for recipe apache::default

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
  it { should be_listening }
end

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_running }
  it { should be_enabled }
end

# the inspec resource 'command' is very useful
# https://www.inspec.io/docs/reference/resources/command/

# describe command('curl localhost:80') do
#   its('stdout') { should match 'Hello, world!' }
# end