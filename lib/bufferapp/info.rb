module Info
  def account_config_info
    response = self.class.get("/info/configuration.json", {query: {access_token: @token}})
    response.parsed_response
    # {"text" => text, "profile_ids[]" => "", "access_token" => @token}
  end 
end