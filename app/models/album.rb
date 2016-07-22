class Album < ActiveRecord::Base
	validates :name, presence:true
	has_many :artworks, dependent: :destroy
end
