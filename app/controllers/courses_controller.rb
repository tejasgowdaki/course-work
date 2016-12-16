class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(course_param)
		if @course.save
			redirect_to courses_path
		else
			render action: "new"
		end
	end

	def show
		@course = Course.find(params[:id])
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
		@course = Course.find(params[:id])
		if @course.update_attributes(course_param)
			redirect_to course_path(@course)
		else
			render action: "edit"
		end
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy
		redirect_to courses_path
	end

	private

	def course_param
		params[:course].permit(:name, :description, :instructor_id)
	end

end
