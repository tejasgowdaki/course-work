class Student < ActiveRecord::Base

	has_many :registrations
	has_many :courses, through: :registrations
	has_many :course_ratings

	validates_presence_of :name,:email
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

end
