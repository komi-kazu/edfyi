class ArticleCommentsController < ApplicationController
  def create
    comment = ArticleComment.create(comment_params)
    redirect_to post_path(comment.article.id)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, article_id: params[:article_id])
  end
end
