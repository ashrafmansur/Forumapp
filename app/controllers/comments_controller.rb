class CommentsController < ApplicationController
	
  def new
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.create(comment_params)
    
    redirect_to topic_path(@topic)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :topic_id)  
  end

end
