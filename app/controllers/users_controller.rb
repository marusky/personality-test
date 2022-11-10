class UsersController < ApplicationController
  def create
    @user = User.create(user_params)

    if @user.save
      session[:id] = @user.id
      redirect_to intro_path
    else
      flash.now[:notice] = "Kamo, toto meno je uz obsadene. Sorko." #TODO
      render 'pages/home'
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname)
  end
end
