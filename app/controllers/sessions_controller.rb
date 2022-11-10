class SessionsController < ApplicationController
  def create
    @user = User.find_by(nickname: permitted_nickname)

    if @user.present?
      session[:id] = @user.id
      redirect_to results_path
    else
      @nickname_not_found = true
      render 'pages/login', status: :unprocessable_entity
    end
  end

  def destroy
    session[:id] = nil

    redirect_to root_path
  end

  private

  def permitted_nickname
    params.permit(:nickname)[:nickname]
  end
end
