module Profile
	# GET Requests
  def profiles
    response = self.class.get("/profiles.json", {query: {access_token: @token}})
    # {"text" => text, "profile_ids[]" => "", "access_token" => @token}
  	response.parsed_response
  end

  def profile(profile_id)
  	response = self.class.get("/profiles/#{profile_id}.json", {query: {access_token: @token}})
  	response.parsed_response
  end

  def profile_schedules
  end

  # POST Requests

  def set_profile_schedules
 	end

end