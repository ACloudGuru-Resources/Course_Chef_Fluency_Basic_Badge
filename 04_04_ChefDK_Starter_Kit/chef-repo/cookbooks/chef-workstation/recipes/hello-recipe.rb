package 'cowsay'

file '/home/ubuntu/hello.txt' do
  action :create
  content 'Hello, world!'
end