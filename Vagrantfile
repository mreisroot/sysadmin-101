Vagrant.configure("2") do |config|

  # Define provider and allocate resources
  config.vm.provider "virtualbox" do |v|
    v.name = "sysadmin_101"
    v.cpus = 1
    v.memory = 1024
    v.gui = false
  end

  # Define hostname, OS and networking
  config.vm.hostname = "ubuntu"
  config.vm.box = "ubuntu/jammy64"
  config.vm.network "private_network", ip: "192.168.56.21"

  # Provision VM
  config.vm.provision "shell", path: "provision.sh"

end
