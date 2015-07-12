module Update
	# GET requests
  def get_update(update_id)
  	response = self.class.get("/updates/#{update_id}.json", {query: {access_token: @token}})
    response.parsed_response
  end

  def pending_updates(profile_id="")
  	response = self.class.get("/profiles/#{profile_id}/updates/pending.json", {query: {access_token: @token}})
    response.parsed_response
  end

  def sent_updates(profile_id="")
  	response = self.class.get("/profiles/#{profile_id}/updates/sent.json", {query: {access_token: @token}})
    response.parsed_response
  end

  def update_interactions(update_id)
  	response = self.class.get("/updates/#{update_id}/interactions.json", {query: {access_token: @token}})
    response.parsed_response
  end

  # POST Requests
  def create_update(params)
  	params["access_token"] = @token
    response = self.class.post("/updates/create.json", :body => params)
    # {"text" => text, "profile_ids[]" => "", "access_token" => @token}
    response.parsed_response
  end

  def edit_update
  end

  def destroy_update
  end

  def move_update_to_top
  end

  def share_update
  end

  def shuffle_updates
  end

  def reorder_updates
  end



end