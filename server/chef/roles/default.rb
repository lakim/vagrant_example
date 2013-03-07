name 'default'
description 'Default role'
default_attributes(
  :users => [ "rails" ],
  :rbenv => {
    :rubies => [ '1.9.3-p194' ],
    :global => '1.9.3-p194',
    :gems => {
      '1.9.3-p194' => [
        { :name => 'bundler' },
        { :name => 'foreman' }
      ]
    }
  },
  :sphinx => {
    :url => 'http://sphinxsearch.com/files/sphinx-0.9.9.tar.gz',
    :version => '0.9.9',
    :use_mysql => true
  }
)
override_attributes(
  :mysql => {
    :server_root_password => 'root',
    :server_repl_password => 'root',
    :server_debian_password => 'root'
  }
)
run_list(
  'recipe[apt]',
  'recipe[build-essential]',
  'recipe[git]',
  'recipe[ruby_build]',
  'recipe[rbenv::vagrant]',
  'recipe[rbenv::system]',
  'recipe[mysql]',
  'recipe[mysql::server]',
  'recipe[sphinx]',
  'recipe[imagemagick]',
  'recipe[tmux-for-iterm2]',
  'recipe[user::data_bag]'
)