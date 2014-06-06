# -*- mode: ruby; coding: utf-8; -*-

include_recipe "java"

tomcat 'mytomcat' do
  user      'tomcat7'
  action    :install
end
