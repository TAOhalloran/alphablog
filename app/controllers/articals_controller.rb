class ArticlesController < ApplicationController
    
  def new 
    @article = Artical.new
    
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
  
  def show
  @article = Article.find(params[:id])  
  end
  
  
  private
    def article_params
      params.require(:article).permit(:title, :description)
  
end
