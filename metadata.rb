# frozen_string_literal: true

chef_version     '>= 12.6.0'
name             'sprout-chruby'
maintainer       'Pivotal'
maintainer_email 'sprout-maintainers@googlegroups.com'
source_url       'https://github.com/pivotal-sprout/sprout-chruby'
issues_url       'https://github.com/pivotal-sprout/sprout-chruby/issues'
license          'MIT'
description      'Template repo for creating standalone cookbooks'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'
supports         'mac_os_x'
depends          'sprout-base'
depends          'homebrew'
