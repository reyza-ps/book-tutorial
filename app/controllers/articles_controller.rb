class ArticlesController < ApplicationController
  
  def index
    #@article adalah instance variable
    #Article.all model Article dengan memanggil method all
    @articles = Article.all
  end


  def show
    @article = Article.find_by_id(params[:id])
  end

  def new
    @article = Article.new
  end

  def create 
    @article = Article.new(params_articles)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find_by_id(params[:id])
  end

  def update
    @article = Article.find_by_id(params[:id])
    if @article.update_attributes(params_articles)
      redirect_to @article
    end
  end

  def destroy
    @article = Article.find_by_id(params[:id])
    @article.destroy
    redirect_to articles_url
  end

  private

  def params_articles
    params.require(:article).permit(:title, :body)
  end

end
