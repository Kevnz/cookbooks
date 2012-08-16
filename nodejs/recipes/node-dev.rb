include_recipe "nodejs"


bash "install node-dev" do
  user "root"   
  code <<-EOH
    sudo npm install -g coffee-script
    sudo npm install -g node-dev
    sudo npm install -g mocha
    sudo npm install -g should    
  EOH
  not_if "#{node[:nodejs][:dir]}/bin/npm -v 2>&1 | grep '#{node[:nodejs][:npm]}'"
end