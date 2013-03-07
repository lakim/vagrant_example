name 'vagrant'
description 'Vagrant role for local development'
override_attributes(
  :users => [ "rails", "vagrant" ]
)