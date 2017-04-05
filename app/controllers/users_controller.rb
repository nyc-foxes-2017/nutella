class UsersController < ApplicationController
  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user.to_json(methods: :friends)
    else
      redirect_to :back
    end
  end

  def friends
    user = User.find_by(id: params[:user_id])
    if user
      render json: user.friends
    else
      redirect_to :back
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
