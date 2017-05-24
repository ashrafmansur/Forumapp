class Users::RegistrationsController < Devise::RegistrationsController
 	
 	def new
 		@user = User.new
 	end

 	def create
 		@user = User.new(user_params)
 		if (@user.save)
 			sign_in @user
 			redirect_to topics_url
 		else
 			new_user_registration_path(user_params)
 		end
 	end

 	private
 	def user_params
 		params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation) 		
 	end
end