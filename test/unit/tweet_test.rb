require 'test_helper'
 
class TweetTest < ActiveSupport::TestCase
  test "uniqie tweets" do
    tweet1 = Tweet.new
    tweet1.twitter_id = "id"
    tweet1.username = "username"
    tweet1.text = "text"
    tweet1.save

    tweet2 = Tweet.new
    tweet2.twitter_id = "id"
    tweet2.username = "username"
    tweet2.text = "text"
    tweet2.save
  end
end
