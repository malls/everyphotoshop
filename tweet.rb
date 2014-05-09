require 'listen'
require 'twitter'
require 'dotenv'

Dotenv.load

listener = Listen.to('/Users/Forrest/code/photoshop') do |modified, added, removed|

  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV['consumer_key']
    config.consumer_secret     = ENV['consumer_secret ']
    config.access_token        = ENV['access_token']
    config.access_token_secret = ENV['access_token_secret']
  end

  imgname = File.read('tweet.txt')

  client.update(imgname)
  puts File.read('tweet.txt')

end

listener.start