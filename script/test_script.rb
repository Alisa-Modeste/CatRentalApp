require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
   :scheme => "http",
   :host => "localhost",
   :port => 3000,
   :path => "/cats/new"
 ).to_s

p RestClient.post(url)