Vagrant.configure("2") do |config|

  # Define provider and allocate resources
  config.vm.provider "virtualbox" do |v|
    v.name = "sysadmin_101_freebsd"
    v.cpus = 1
    v.memory = 1024
    v.gui = false
  end

  # Define hostname, OS, networking and disk size
  config.vm.hostname = "freebsd"
  config.vm.box = "freebsd/FreeBSD-13.1-STABLE"
  config.vm.network "private_network", ip: "192.168.56.22"
  config.disksize.size = '20GB'

  # Provision VM
  config.vm.provision "shell", path: "provision.sh"

end
