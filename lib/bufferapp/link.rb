module Link
  def link_shares(url)
    response = self.class.get("/links/shares.json", {query: {access_token: @token, url: url}})
    response.parsed_response
  end 
end