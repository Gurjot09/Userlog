class UsersController < ApplicationController

  def new
  	@emaild=User.new
  end

 def create
   @emaild=User.new(valid_params)
   if @emaild.save
    session[:user_id]=@emaild
   redirect_to articles_path
   else
   render 'new'
 end
  
 end



def valid_params
	params.require(:user).permit(:name,:email,:password)
	
end
end
