module User
  def user
    response = Bufferapp.get('/user.json', "access_token" => @token)
    # {"text" => text, "profile_ids[]" => "", "access_token" => @token}
  end 
end