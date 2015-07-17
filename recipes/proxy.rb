template "/etc/nginx/sites-available/proxy.conf" do
  source "proxy.conf.erb"
  owner "root"
  group "root"
  mode 0777
  variables(:proxy_hash => node['nginx']['proxy'] )
  action :create
end

Chef::Log.info node['nginx']['proxy']['location']
node['nginx']['proxy']['location'].each do |location|
  Chef::Log.info location.inspect

  template location['params_file'] do
    source "proxy_params.conf.erb"
    owner "root"
    group "root"
    mode 0777
    variables(:params => location['params'])
    action :create
  end

end

nginx_site "proxy" do
  enable true
end
