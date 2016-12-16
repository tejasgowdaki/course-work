class InstructorsController < ApplicationController

	def index
		@instructors = Instructor.all
	end

	def new
		@instructor = Instructor.new
	end

	def create
		@instructor = Instructor.new(instructor_param)
		if @instructor.save
			redirect_to instructors_path
		else
			render action: "new"
		end
	end

	def show
		@instructor = Instructor.find(params[:id])
	end

	def edit
		@instructor = Instructor.find(params[:id])
	end

	def update
		@instructor = Instructor.find(params[:id])
		if @instructor.update_attributes(instructor_param)
			redirect_to instructor_path(@instructor)
		else
			render action: "edit"
		end
	end

	def destroy
		@instructor = Instructor.find(params[:id])
		@instructor.destroy
		redirect_to instructors_path
	end

	private

	def instructor_param
		params[:instructor].permit(:name, :email, :bio)
	end

end
