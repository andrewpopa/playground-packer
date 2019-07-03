Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu-1604-vbox.box"
    config.vm.provider "virtualbox" do |vb|
      vb.name = "nginx64"
      vb.memory = "512"
      vb.cpus = "1"
    end
    config.vm.provision "shell", path: "scripts/install_nginx.sh", privileged: false
  end