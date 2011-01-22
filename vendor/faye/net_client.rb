require 'rubygems'
require 'json' 
require 'net/http' 
require 'uri' 

endpoint = URI.parse('http://localhost:9292/faye') 
message = {'channel' => '/foo', 'data' => {'hello' => 'world'}} 

Net::HTTP.post_form(endpoint, :message => JSON.unparse(message))
