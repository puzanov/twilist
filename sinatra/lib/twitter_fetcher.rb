class TwitterFetcher
  attr_accessor :client

  def initialize
    Twitter.configure do |config|
      config.consumer_key = TWITTER_CONFIG["consumer_key"]
      config.consumer_secret = TWITTER_CONFIG["consumer_secret"]
      config.oauth_token = TWITTER_CONFIG["oauth_token"]
      config.oauth_token_secret = TWITTER_CONFIG["oauth_token_secret"]
    end
    @client = Twitter::Client.new
  end

  def update_friends_timeline
    puts @client.friends_timeline.first.to_yaml
    @client.friends_timeline(:count => 200)
  end
end
