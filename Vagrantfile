# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  # Windows 32bit specific
  # Turn off virtualization acceleration (VT-x), PAE, nested paging
  # config.vm.customize ["modifyvm", :id, "--cpus", 1]
  # config.vm.customize ["modifyvm", :id, "--hwvirtex", "off"]
  # config.vm.customize ["modifyvm", :id, "--vtxvpid", "off"]
  # config.vm.customize ["modifyvm", :id, "--pae", "off"]
  # config.vm.customize ["modifyvm", :id, "--nestedpaging", "off"]

  # More tries and timeout to catch up
  config.ssh.max_tries = 50
  config.ssh.timeout   = 300

  config.vm.box = "ubuntu-12.04-server-amd64"
  # If the box hasn't been added to vagrant yet:
  # Need to run 'cd server/chef/veewee && vagrant basebox build ubuntu-12.04-server-amd64' before
  config.vm.box_url = "server/veewee/ubuntu-12.04-server-amd64.box"

  # config.vm.provision :chef_solo do |chef|
  #   chef.cookbooks_path = "server/chef/cookbooks"

  #   json = JSON.parse(File.read("server/chef/nodes/#{host}.json"))
  #   dna.delete("recipes").each do |recipe|
  #     chef.add_recipe(recipe)
  #   end
  #   chef.json.merge!(dna)

  #   chef.add_recipe "apt"
  #   chef.add_recipe "build-essential"
  #   chef.add_recipe "git"
  #   chef.add_recipe "ruby_build"
  #   chef.add_recipe "rbenv::vagrant"
  #   chef.add_recipe "rbenv::system"
  #   chef.add_recipe "mysql"
  #   chef.add_recipe "mysql::server"
  #   chef.add_recipe "sphinx"
  #   chef.add_recipe "imagemagick"
  #   chef.add_recipe "libqt4::dev"

  #   chef.json = {
  #     'rbenv' => {
  #       'rubies' => [ '1.9.3-p194' ],
  #       'global' => '1.9.3-p194',
  #       'gems' => {
  #         '1.9.3-p194' => [
  #           { 'name'  => 'bundler' },
  #           { 'name'  => 'foreman' }
  #         ]
  #       }
  #     },
  #     "mysql" => {
  #       "server_root_password" => "root",
  #       "server_repl_password" => "root",
  #       "server_debian_password" => "root"
  #     },
  #     "sphinx" => {
  #       "url" => "http://sphinxsearch.com/files/sphinx-0.9.9.tar.gz",
  #       "version" => "0.9.9",
  #       "use_mysql" => true
  #     }
  #   }
  # end

  # config.vm.provision :chef_solo do |chef|
  #   chef.cookbooks_path = [ "cookbooks" ]
  #   chef.add_recipe "apt"
  #   chef.add_recipe "build-essential"
  #   chef.add_recipe "git"
  #   chef.add_recipe "ruby_build"
  #   chef.add_recipe "rbenv::vagrant"
  #   chef.add_recipe "rbenv::system"
  #   chef.add_recipe "mysql"
  #   chef.add_recipe "mysql::server"
  #   chef.add_recipe "sphinx"
  #   chef.add_recipe "imagemagick"
  #   chef.add_recipe "libqt4::dev"

  #   chef.json = {
  #     'rbenv' => {
  #       'rubies' => [ '1.9.3-p194' ],
  #       'global' => '1.9.3-p194',
  #       'gems' => {
  #         '1.9.3-p194' => [
  #           { 'name'  => 'bundler' },
  #           { 'name'  => 'foreman' }
  #         ]
  #       }
  #     },
  #     "mysql" => {
  #       "server_root_password" => "root",
  #       "server_repl_password" => "root",
  #       "server_debian_password" => "root"
  #     },
  #     "sphinx" => {
  #       "url" => "http://sphinxsearch.com/files/sphinx-0.9.9.tar.gz",
  #       "version" => "0.9.9",
  #       "use_mysql" => true
  #     }
  #   }
  # end

  # Boot with a GUI so you can see the screen. (Default is headless)
  config.vm.boot_mode = :gui

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  config.vm.network :hostonly, "33.33.33.33"

  # Assign this VM to a bridged network, allowing you to connect directly to a
  # network using the host's network device. This makes the VM appear as another
  # physical device on your network.
  # config.vm.network :bridged

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port 80, 8080
  # config.vm.forward_port 3000, 3000

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  config.vm.share_folder "v-data", "/vagrant", ".", :nfs => (RUBY_PLATFORM =~ /darwin/)
end
