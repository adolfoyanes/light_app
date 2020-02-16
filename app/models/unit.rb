class Unit < ApplicationRecord
	validates_uniqueness_of :name
	
	def self.load_data(url)
		require 'brews_gem'
		response = BrewsGem::Breweries.call(url)
		success = []
		failures = []
		response.formatted_breweries.each do |x|
			exists = Unit.find_by_name(x["name"])
			next if exists.present? 
			un = Unit.new 
	  	un.price = x["price"]
	  	un.name = x["name"]
	  	un.description = x["description"]
	  	un.area = x["area"]
	  	un.uom = x["uom"]
  		if un.save 
    		success << un.name 
  		else
    		failures << un.name 
  		end
  	end
  	return [200, success, failures]
	end

end
