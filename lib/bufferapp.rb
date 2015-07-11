require "bufferapp/version"
require "bufferapp/update"
require "httparty"

class Bufferapp
	include HTTParty
	include Update
  base_uri 'https://api.bufferapp.com/1'


	def initialize(token)
		@token = token
	end

end

