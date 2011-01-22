desc "Update friends timeline"
task :update_friends_timeline => :environment do
  require "config/environment"
  require "lib/twitter_fetcher"
  t = TwitterFetcher.new
  t.update_friends_timeline
end

