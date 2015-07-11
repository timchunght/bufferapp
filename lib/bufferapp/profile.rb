require 'json'
module Profile
  def profiles
  	puts @token
    response = Bufferapp.get('/profiles.json', {query: {access_token: @token}})
    # {"text" => text, "profile_ids[]" => "", "access_token" => @token}
  end 
end