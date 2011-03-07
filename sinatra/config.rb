require "rubygems"
require "bundler"
require "yaml"
Bundler.setup :default
CONFIG = YAML.load_file("config.yml")
