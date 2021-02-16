class LocationsController < ApplicationController

	def index
		@locations = Location.order('created_at DESC')
	end

	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		if @location.save
		  flash[:success] = "Location added Successfully!"
		  redirect_to root_path
		else
		  render 'new'
		end
	end

	def show
	  	@location = Location.find(params[:id])
	end

	private

	def location_params
		params.require(:location).permit(:address, :lat, :long)
	end
end
