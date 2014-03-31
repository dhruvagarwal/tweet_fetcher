require 'twitter'
class TweetsController < ApplicationController
  def index
  	client = Twitter::REST::Client.new do |config|
		config.consumer_key = 'quggZEzEtmj36RQdyf97sUcNZ'
		config.consumer_secret = '7LNSr7B7LpN2ak1WPV83dmo9J453c2jnRYznqy1GVd2VDzme5p'
		config.access_token = '2416338816-xAVrVBpdtjvStiXoqUHPTHDu1y1sPf7rJ8p0R4z'
		config.access_token_secret = 'GTAI52goIwyoUCKci4l9AimKKaIfCK68J1mGp4wSiDKBL'
	end
	@keyword="watching"
	@tweet=client.search(@keyword).take(100) #, :result_type => "recent").take(20)
  	@some_var=["connect to twitter","change controller","fetch results","store it in a db","display with lazy load"]
  end
end