class PostsController < ApplicationController

  def index
    @articles = Article.includes(:user).order("created_at DESC")
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
    @article = Article.find(params[:id])
    @comment = ArticleComment.new
    @comments = @article.article_comments.includes(:user)
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(:title,:article1,:image1,:article2,:image2,:article3,:image3,:article4,:image4,:article5,:image5,:article6,:image6,:article7,:image7,:article8,:image8,:article9,:image9,:article10,:image10,:article11).merge(user_id: current_user.id)
  end
end
