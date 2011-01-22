require 'rubygems'
require 'faye'
require 'eventmachine'


client = Faye::Client.new('http://localhost:9292/faye')
EM.run do 
  client.publish('/foo', 'text' => 'Hello world') 
  EM.add_timer(1) do 
    EM.stop 
    exit 
  end
end
