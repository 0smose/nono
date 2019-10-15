class UsersController < ApplicationController

	def show
    @user = User.find(params[:id])
  end
  

   def delete_image_attachment
   	@user = User.find(params[:user_id])
    @user.photos.find_by(params[:attachment_id]).purge
    redirect_to user_path(@user.id)
  end
end
