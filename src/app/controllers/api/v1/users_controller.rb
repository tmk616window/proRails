class Api::V1::UsersController < ApplicationController

  def index
      render json: { status: 200, user: User.all }
    end

  def show

    @user = User.find(params[:id])
      render json: { status: 200, user:{user:@user, task:@user.tasks}  }
    end

  def update
    user = User.find(params[:id])
        if user.update(user_params)
          render json: { status: 200, user: user }
        else
            render json: { status: 500, message: "userの更新に失敗しました" }
        end
  end

  private

  def user_params
      # params.require(:user).permit(:email, :name, :image, :live, :details, :age)
      params.permit(:email, :name, :image, :live, :details, :age)
   end

   
end
