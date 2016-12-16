class Course < ActiveRecord::Base

	belongs_to :instructor
	has_many :registrations
	has_many :students, through: :registrations
	has_many :course_ratings

	validates_presence_of :name, :description, :instructor_id

end
