class LikesController < ApplicationController

	def create
	 @like= Like.new
     @like.user_id=session[:user_id]['id']

     @like.article_id=session[:art_id]
       @like.save
	 

	end
	

	def likers
	end


end
