require 'resque_scheduler/tasks'
require './config_resque'

desc "Alias for resque:work (To run workers on Heroku)"
task "jobs:work" => "resque:scheduler"
