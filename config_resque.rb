require 'uri'
require 'redis'
require 'resque'
require 'resque_scheduler'
require 'yaml'

uri = ENV["REMOTE_REDIS_URL"]? URI.parse(ENV["REMOTE_REDIS_URL"]) : URI.parse("redis://localhost:6379")

REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)

Resque.redis = REDIS
Resque.schedule = YAML.load_file(File.join(File.dirname(__FILE__), 'resque_schedule.yml'))

# Create job modules from the schedule
Resque.schedule.each do |name, job|
  obj = Object.const_set(job["class"], Module.new)
  obj.instance_variable_set :@queue, job["queue"]
end
