# -*- mode: ruby; coding: utf-8; -*-

source 'https://api.berkshelf.com'

metadata

cookbook 'java', '~> 1.22.0'
cookbook 'ark', '~> 0.8.2'

group :integration do
  cookbook 'apt', '~> 2.0'
  cookbook 'yum', '~> 3.0'
end

# cookbook 'tomcat_test_default', path: 'test/fixtures/cookbooks/tomcat_test_default'
cookbook 'tomcat_test_providers', path: 'test/fixtures/cookbooks/tomcat_test_providers'
