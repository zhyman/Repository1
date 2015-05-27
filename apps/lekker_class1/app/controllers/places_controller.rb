class PlacesController < ApplicationController
	def index
		@places = Place.all.order(:name)
	end
end