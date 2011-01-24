# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Twilist::Application.initialize!
TWITTER_CONFIG = YAML.load_file("#{RAILS_ROOT}/config/twitter.yml")
