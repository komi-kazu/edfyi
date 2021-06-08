class ArticlesController < ApplicationController

  def index
    # @articles = Article.includes(:user,params[:id]).order("articles.created_at DESC")
    @articles = Article.includes(:user).order("created_at DESC")
    if params[:tag_name]
      @articles = Article.tagged_with("#{params[:tag_name]}").order("created_at DESC")
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    tag_list = params[:article][:tag_names].split(",")
    @article.tags_save(tag_list) 
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path
    else
      render :edit
    end
  end

  def show
    @article = Article.find(params[:id])
    @comment = ArticleComment.new
    @comments = @article.article_comments.includes(:user)
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to root_path
  end

  def search
    # @articles = Article.search(params[:keyword])
    # if (params[:keyword])[0] == '#'
      # @articles = Tag.search(params[:keyword]).order('created_at DESC')
      @tag_list = Tag.all  #こっちの投稿一覧表示ページでも全てのタグを表示するために、タグを全取得
      @tag = Tag.find(params[:tag_id])  #クリックしたタグを取得
      @articles = @tag.articles.all  
    # else
      @articles = Article.search(params[:keyword]).order('created_at DESC')
    # end
  end


  private

  def article_params
    params.require(:article).permit(:title,:article1,:image1,:article2,:image2,:article3,:image3,:article4,:image4,:article5,:image5,:article6,:image6,:article7,:image7,:article8,:image8,:article9,:image9,:article10,:image10,:article11,:tag_list).merge(user_id: current_user.id)
  end
end
