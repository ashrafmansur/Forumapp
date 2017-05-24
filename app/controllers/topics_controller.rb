class TopicsController < ApplicationController
	def index
		@topics = Topic.all
	end

	def show
    	@topics = Topic.find(params[:id])
    	@comments = Topic.find(params[:id]).comments
  	end

  	def new
  		@topic = Topic.new
  	end

  	def create
		@topic = Topic.create(topic_params)  		
		
  		redirect_to topics_url
	end


  	private

  	def topic_params
  		params.require(:topic).permit(:title, :body, :user_id)
  	end

end
