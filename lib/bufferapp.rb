require "bufferapp/version"
require "bufferapp/update"
require "bufferapp/user"
require "bufferapp/profile"
require "bufferapp/update"
require "bufferapp/info"
require "bufferapp/link"
require "httparty"

class Bufferapp
	include HTTParty
	include Update
	include User
	include Profile
	include Link
	include Info

  base_uri "https://api.bufferapp.com/1"


	def initialize(token)
		@token = token
	end

end

