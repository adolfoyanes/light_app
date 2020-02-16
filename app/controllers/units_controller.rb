class UnitsController < ApplicationController

	def index 
		@units = Unit.all
	end

	def delete_data
		Unit.delete_all 
		respond_to do |format|
        format.json { render json: 200}
    end
	end

	def load_data
		Unit.load_data("https://api.openbrewerydb.org/breweries")
		respond_to do |format|
        format.json { render json: 200}
    end
	end
end
