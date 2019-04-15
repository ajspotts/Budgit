# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

# sh `db:drop`
# sh `db:create`
# sh `db:migrate`
# sh `db:seed`

task :set_up_db do
  puts '***** RUNNING SETUPDB *****'
  sh `rails db:drop`
  sh `rails db:create`
  sh `rails db:migrate`
  sh `rails db:seed`
end

task :default => 'set_up_db'
