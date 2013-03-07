name 'test'
description 'Test role to run the app tests. Local or CI'

run_list(
  'recipe[libqt4::dev]',
  'recipe[firefox]'
)