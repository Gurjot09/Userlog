class ArticlesController < ApplicationController


def your_articles
@user_id=  	session[:user_id]['id']
@user_articles=Article.where(user_id:@user_id)

end


def new
	@article=Article.new
end

def create
@article=Article.new(valid_params)
@article.user_id =  session[:user_id]['id']

if @article.save
	redirect_to article_path(@article)
else
    render 'new'
end
end 

def show
 @article= Article.find(params[:id])
 session[:art_id]=@article.id
 @comment = Comment.where(article_id: @article.id)
  @user_id=@article.user_id
 @name=User.find_by(id: @user_id)
end 

def index
@articles=Article.all
end


def edit
@article=Article.find(params[:id])
end

def update
  @article=Article.find(params[:id])
  if @article.update(valid_params)
    redirect_to article_path(@article)

   else
   	render 'edit'
  end

end

def destroy
	@article=Article.find(params[:id])
    @article.destroy
    redirect_to articles_your_articles_path
end

private

def valid_params
params.require(:article).permit(:title , :text, :user_id)

end
end