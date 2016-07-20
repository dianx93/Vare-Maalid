class ArtworksController < ApplicationController
	def create
		@album = Album.find(params[:album_id])
		@artwork = @album.artworks.create(artwork_params)
		if params[:picture].present?
			preloaded = Cloudinary::PreloadedFile.new(params[:picture])         
			raise "Invalid upload signature" if !preloaded.valid?
			@artwork.update_attribute(:picture, "test1")
		else
			@artwork.update_attribute(:picture, "11045491_922801141123611_5721047301384327574_n_f0fy10.jpg")
		end
		redirect_to album_path(@album)
		true
	end
	
	def show
		@artwork = Artwork.find(params[:id])
	end
	
	attr_accessor :picture
	
	private
	def artwork_params
		params.require(:artwork).permit(:title, :author, :year, :style, :height, :width, :picture)
	end
end
