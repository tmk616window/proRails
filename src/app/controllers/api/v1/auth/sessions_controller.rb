class Api::V1::Auth::SessionsController < ApplicationController
    byebug
    def index
      if current_api_v1_user
        render json: {currentUser:{ isLogin: true, data: current_api_v1_user }}
      else
        render json: {currentUser:{ isLogin: false, message: "ユーザーが存在しません" }}
      end
    end
  end
  