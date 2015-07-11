require 'json'
module Profile
  def profiles
    response = self.class.get('/profiles.json', {query: {access_token: @token}})
    # {"text" => text, "profile_ids[]" => "", "access_token" => @token}
  end 
end