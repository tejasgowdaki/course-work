class PublicationsController < ApplicationController

	def index
		@publications = Publication.all
	end

	def new
		@publication = Publication.new
	end

	def create
		@publication = Publication.new(publication_param)
		if @publication.save
			redirect_to publications_path
		else
			render action: "new"
		end
	end

	def edit
		@publication = Publication.find(params[:id])
	end

	def update
		@publication = Publication.find(params[:id])
		if @publication.update_attributes(publication_param)
			redirect_to publications_path
		else
			render action: "edit"
		end
	end

	def destroy
		@publication = Publication.find(params[:id])
		@publication.destroy
		redirect_to publications_path
	end

	private

	def publication_param
		params[:publication].permit(:title, :link, :instructor_id)
	end

end
