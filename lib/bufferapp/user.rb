module User
  def user
    response = self.class.get("/user.json", {query: {access_token: @token}})
    response.parsed_response
    # {"text" => text, "profile_ids[]" => "", "access_token" => @token}
  end 
end