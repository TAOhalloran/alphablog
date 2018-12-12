class ArticlesController < ApplicationController
    
  def index
    @articles = Article.all
  end
  
    
    
  def new 
    @article = Artical.new
    
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
 
  
  def create

  if @article.save
    # do something
    flash[:notice] = "Artical was successfully created."
    redirect_to article_path(@article)
  else
    render 'new'
  end
  # @article.save
  # redirect_to article_path(@article)
  
  end
  
   def update
    @article = Article.find(params[:id])
    
    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully."
      redirect_to article_path(@article)
    else
      render 'edit'
  end
    
  end
  
  def show
  @article = Article.find(params[:id])  
  end
  
  
  private
    def article_params
      params.require(:article).permit(:title, :description)
  
end
