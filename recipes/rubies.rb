package 'ruby-install'

ruby_install_dir = node['sprout']['chruby']['rubies_dir']
node['sprout']['chruby']['rubies'].each do |ruby_vm, ruby_versions|
  ruby_versions.each do |ruby_version|
    execute "ruby-install --cleanup --no-reinstall --rubies-dir #{ruby_install_dir} #{ruby_vm} #{ruby_version}" do
      user node['sprout']['user']
      environment('GEM_HOME' => nil)
    end
  end
end
