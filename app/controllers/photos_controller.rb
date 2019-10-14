class PhotosController < ApplicationController

	def create
    @user = User.find(params[:user_id])
    @user.photos.attach(params[:photos])
    redirect_to(user_path(@user))
  end 

 def destroy
 	@user = User.find(params[:user_id])

 	end

end
