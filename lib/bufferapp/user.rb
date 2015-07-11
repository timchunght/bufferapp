module User
  def user
    response = self.class.get('/user.json', {query: {access_token: @token}})
    # {"text" => text, "profile_ids[]" => "", "access_token" => @token}
  end 
end