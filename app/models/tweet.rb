class Tweet
  include Mongoid::Document
  field :twitter_id
  field :username
  field :text
  field :profile_image_url 
  index :twitter_id, :unique => true
end
