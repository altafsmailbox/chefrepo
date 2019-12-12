

package %w[tree ansible] do 
  action :install
  ignore_failure true
end




file '/etc/motd' do 
  content 'this server is the property of altaf '
  owner 'root'
  group 'root'
  action :create 
end

