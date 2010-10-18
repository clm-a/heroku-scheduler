require 'resque_scheduler/tasks'
require './jobs/daily_story_updater'
require './jobs/frequent_story_updater'
require './jobs/relevance_updater'
require './config_resque'
desc "Alias for resque:work (To run workers on Heroku)"
task "jobs:work" => "resque:scheduler"

