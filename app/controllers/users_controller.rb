class UsersController < ApplicationController
  def new
      @user = User.new

    end

    def create
      # User.create user_params
      @user = User.new user_params
      if @user.save

        redirect_to root_path# if it worked !
      else
        render :new # show new page again
      end
    end
    private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
