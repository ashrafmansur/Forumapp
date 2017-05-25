class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		if (@user.destroy)
			redirect_to topics_url
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to user_path(@user)
		else
			render :edit
		end		
	end

	private
	def user_params
		params.require(:user).permit(:firstname, :lastname, :email)
	end
end
