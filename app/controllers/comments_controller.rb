class CommentsController < ApplicationController
	before_action :set_comment, only: []

  def new
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.build
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.build(comment_params)
    @comment.user = current_user
    
    if @comment.save
      redirect_to topic_path(@topic)
    else
      render :new
    end
  end

  def edit
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      redirect_to topic_path(@topic)
    else
      render :edit
    end

  end


  def destroy
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to topic_path(@topic)
  end

  private

  def set_comment
    
  end

  def comment_params
    params.require(:comment).permit(:body)  
  end

end
