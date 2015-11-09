class UsersController < ApplicationController
  before_action :set_user

  def show
  end

  def edit
    
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to edit_user_path(@user), notice: 'User updated successfully.'}
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    # used for update create, not for show
    params.require(:user).permit(:email, :password, :contact_number, :date_of_birth, :about, :interests, :position, :avatar, :remove_avatar )
  end

end
