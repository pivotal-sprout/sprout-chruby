node.default['sprout']['chruby']['auto_change_ruby'] = true
node.default['sprout']['chruby']['default_ruby'] = 'ruby-2.3.1'

include_attribute 'sprout-base::home'
node.default['sprout']['chruby']['rubies_dir'] = File.join(node['sprout']['home'], '.rubies')
node.default['sprout']['chruby']['rubies'] = {
  'ruby' => [
    '2.3.1'
  ]
}
