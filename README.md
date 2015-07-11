Bufferapp Gem - Ruby Wrapper for the Buffer API
---

This is a simple implementation of a Ruby Wrapper for the BufferApp API.

Currently, only the following requests work:

	POST /1/updates/create.json

I will certainly implement the whole library if I got more time. This class was implemented when I got frustrated by the lack of documentation in the official gem (the API Doc link was dead when I tried to access it) for a single purpose: create and schedule updates.

Build the Gem using standard Gem building procedure. This Gem is not hosted by rubygems for the time being. In console,
	
	require 'bufferapp'
	buffer = Bufferapp.new(your_token)
	buffer.create_update({"text" => your_post, "scheduled_at" => date_string_iso8601_format, "profile_ids[]" => your_profile_id})

For the time being, only one profile_id is accepted. I will add more features to it later.

I hope it saves you some time.