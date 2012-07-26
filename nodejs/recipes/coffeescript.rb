include_recipe "nodejs::npm"


bash "install coffee-script" do
  user "root"	
  code <<-EOH
    sudo npm install -g coffee-script    
  EOH
  not_if "#{node[:nodejs][:dir]}/bin/npm -v 2>&1 | grep '#{node[:nodejs][:npm]}'"
end