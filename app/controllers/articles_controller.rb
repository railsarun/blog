class ArticlesController<ApplicationController
before_action :set_article,only:[:show,:update,:edit,:destroy]
  def show 
  
 
end

 def index
  @articles=Article.all

 end
def new
  @article=Article.new

end
def edit
  

end

def create
 # render plain:params[:articles]
 @article=Article.new( article_params)
#render plain:@article.inspect
if @article.save
  flash[:notice]="Article was created successfully"
redirect_to articles_path(@article)
else 
  render 'new'
end
end
def update 
  
 if @article.update( article_params)
  flash[:notice]="Article was created successfully"
redirect_to articles_path(@article)
else 
  render 'edit'
end


end
def destroy
  @article=Article.find(params[:id])
  @article.destroy
  redirect_to articles_path
end
private
def set_article
  @article=Article.find_by(params[:id])
end
  def article_params
    params.require(:articles).permit(:title,:description)

end

end
