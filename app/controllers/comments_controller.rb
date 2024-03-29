# frozen_string_literal: true

class CommentsController < ApplicationController
  def index
    @topics = Comment.all # .includes(:favorite_users)
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = '投稿に失敗しました'
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :topic_id)
  end
end
