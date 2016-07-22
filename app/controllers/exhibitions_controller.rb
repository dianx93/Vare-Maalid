class ExhibitionsController < ApplicationController

	def index
		@exhibitions = Exhibition.all
	end
	
	def show
		@exhibition = Exhibition.find(params[:id])
	end
	
	def new
		@exhibition = Exhibition.new
	end

	def edit
		@exhibition = Exhibition.find(params[:id])
	end

	def create
		@exhibition = Exhibition.new(exhibition_params)
		
		if @exhibition.save
			redirect_to exhibitions_path
		else
			render 'new'
		end
	end

	def update
		@exhibition = Exhibition.find(params[:id])
		
		if @exhibition.update(exhibition_params)
			redirect_to exhibitions_path
		else
			render 'edit'
		end
	end
	
	def destroy
		@exhibition = Exhibition.find(params[:id])
		@exhibition.destroy
		
		redirect_to exhibitions_path
	end
	
	private
	def exhibition_params
		params.require(:exhibition).permit(:name, :location, :duration)
	end
end
