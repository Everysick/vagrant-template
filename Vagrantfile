Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision 'shell', path: 'bootstrap.sh', privileged: false

  # set private ip here
  config.vm.network "private_network", ip: "192.168.33.12"
  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end
end
