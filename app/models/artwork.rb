class Artwork < ActiveRecord::Base
	belongs_to :album
	validates_presence_of :style
	mount_uploader :picture, PictureUploader
end
