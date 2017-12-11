class LoginController < ApplicationController

 def login
 end

def create
	@email= valid_params[:email]
    @password=valid_params[:password]
    
   

  




    @emaild=User.find_by(email: @email)
    @pass=User.find_by(password: @password) 
    
    if @emaild==nil || @pass==nil
    render 'login'
 	
 	else
    session[:user_id]=@emaild
    
    redirect_to articles_path

     end 
    
    
end

def valid_params
	params.require(:login).permit(:email, :password)
	
end
end
