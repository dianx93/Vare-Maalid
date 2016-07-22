class Exhibition < ActiveRecord::Base
	validates_presence_of :name, :location, :duration
end
