
ruby_block "load jdbc parameters" do
  block do
    app_name = node['tomcat']['application']
    db = data_bag_item("apps", app_name)[node['app_env']]
    node.default['tomcat']['java_opts'] = db['java_opts']
    node.default['tomcat']['jdbc']['schema'] = db['jdbc']['schema']
    node.default['tomcat']['jdbc']['user'] = db['jdbc']['user']
    node.default['tomcat']['jdbc']['host'] = db['jdbc']['host']
    jdbc_url = "jdbc:#{node['tomcat']['jdbc']['driver']['name']}://" +
      node['tomcat']['jdbc']['host'] + ":" +
      node['tomcat']['jdbc']['port'] + "/" +
      node['tomcat']['jdbc']['schema'] 
    node['tomcat']['jdbc']['url'] = jdbc_url
  end
end
