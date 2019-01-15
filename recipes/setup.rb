package 'tree' do
  action:install
end
package 'emacs'

package 'git' do 
  action:install
end

package 'ntp'

file '/etc/motd' do
  content 'This is Gaurab Dey learning Chef'
  action:create
end

service 'ntpd' do
  action [:enable, :start]
end
