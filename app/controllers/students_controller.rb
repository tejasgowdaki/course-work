class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_param)
		if @student.save
			redirect_to students_path
		else
			render action: "new"
		end
	end

	def show
		@student = Student.find(params[:id])
		@course_rating = CourseRating.new
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(student_param)
			redirect_to student_path(@student)
		else
			render action: "edit"
		end
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to students_path
	end

	private

	def student_param
		params[:student].permit(:name, :email, :major, course_ids: [] )
	end

end
