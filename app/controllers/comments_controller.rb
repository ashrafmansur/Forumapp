class CommentsController < ApplicationController
	before_action :set_topic, only: [:new, :create, :edit, :update, :destroy]

  def new
    @comment = @topic.comments.build
  end

  def create
    @comment = @topic.comments.build(comment_params)
    @comment.user = current_user
    
    if @comment.save
      redirect_to topic_path(@topic)
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      redirect_to topic_path(@topic)
    else
      render :edit
    end

  end


  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to topic_path(@topic)
  end

  private

  def set_comment
    
  end

  def set_topic
    @topic = Topic.find(params[:topic_id])
  end

  def comment_params
    params.require(:comment).permit(:body)  
  end

end
