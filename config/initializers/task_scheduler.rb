require 'rubygems' 
require 'rufus/scheduler'
require "lib/twitter_fetcher"
scheduler = Rufus::Scheduler.start_new   

scheduler.every "1m" do  
  t = TwitterFetcher.new
  t.update_friends_timeline
end 
