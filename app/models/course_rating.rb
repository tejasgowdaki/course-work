class CourseRating < ActiveRecord::Base

	belongs_to :course
	belongs_to :student

	validates_presence_of :rating, :student_id, :course_id
	validates_numericality_of :rating, less_than_or_equal_to: 5

end
