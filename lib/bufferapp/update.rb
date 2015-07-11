module Update
  def create_update(params)
  	params["access_token"] = @token
    response = self.class.post('/updates/create.json', :body => params)
    # {"text" => text, "profile_ids[]" => "", "access_token" => @token}
  end 
end