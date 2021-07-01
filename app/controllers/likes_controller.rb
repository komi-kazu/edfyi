class LikesController < ApplicationController
  before_action :article_params

  def create
    Like.create(user_id: current_user.id, article_id: params[:id])
    redirect_to article_path
  end

  def destroy
    Like.find_by(user_id: current_user.id, article_id: params[:id]).destroy
    redirect_to article_path
  end

  private

  def article_params
    @article = Article.find(params[:id])
  end
end
