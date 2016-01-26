Resque.redis = Redis.new(url: ENV["REDIS_URL"])
Resque.after_fork = Proc { ActiveRecord::Base.establish_connection }
