class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
	
  def index
		@topics = Topic.all
	end

	def show
    @comments = @topic.comments
  end

  def new
  	@topic = Topic.new
  end

 	def create
    @topic = Topic.new(topic_params)
    @topic.user = current_user
    @topic = current_user.topics.build(topic_params)

    if @topic.save
  	  redirect_to topics_url
    else
      render :new
    end
	end

  def edit
    if @topic.user != current_user
      redirect_to topic_path(@topic)
    end
  end

  def update
    if @topic.update_attributes(topic_params) 
      redirect_to topic_path(@topic) 
    else 
      render :edit
    end
  end

  def destroy
    if @topic.user == current_user
      @topic.destroy
      redirect_to topics_url
    else
      redirect_to topic_path(@topic)
    end
  end


  private

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
  	params.require(:topic).permit(:title, :body, :user_id)
  end

end
