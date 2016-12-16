class CourseRatingsController < ApplicationController

	def create
		@course_rating = CourseRating.new(course_rating_param)
		if @course_rating.save
			redirect_to student_path(@course_rating.student_id)
		else
			redirect_to student_path(@course_rating.student_id), notice: "Rating unsuccessful"
		end
	end

	private

	def course_rating_param
		params[:course_rating].permit(:rating, :student_id, :course_id)
	end

end
