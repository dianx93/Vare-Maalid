class Artwork < ActiveRecord::Base
	belongs_to :album
	validates :title, :style, presence: true
end
