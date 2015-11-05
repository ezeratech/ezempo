class UsersController < ApplicationController

  def show 
    @user = User.find_by_email(params[:id])
  end


  private

  def user_params
    # used for update create, not for show
    params.require(:user).permit(:email, :password)
  end

end
