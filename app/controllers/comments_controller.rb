class CommentsController < ApplicationController
 def create
@comment=Comment.new(valid_params)
@comment.user_id=	session[:user_id]['id']
@comment.article_id=session[:art_id]

@comment.save
 redirect_to  article_path(@comment.article_id)
 end

private
def valid_params
params.require(:comments).permit(:comment)

	end
end
