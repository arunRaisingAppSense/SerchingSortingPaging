class TutorialsController < ApplicationController
	def index
  		@tutorials = Tutorial.all
  		@tutorial = Tutorial.new
	end

	def create
    	@tutorial = Tutorial.new(params[:tutorial].permit(:title, :url))
    	byebug
    	if @tutorial.save
    	  	render partial: "tutorial", locals: {tutorial: @tutorial}
    	end
  	end

  	def destroy
    	@tutorial = Tutorial.find(params[:id])
    	@tutorial.destroy
    	render json: @tutorial
  end
end
