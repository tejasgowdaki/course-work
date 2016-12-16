class Publication < ActiveRecord::Base

	belongs_to :instructor

	validates_presence_of :title, :link, :instructor_id

end
