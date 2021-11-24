class Api::V1::PostsController < ApplicationController
    def index
        render json: { status: 200, messages: ChatMessage.all } 
    end


    def show
        render json: { status: 200, messages: ChatMessage.where(chat_id: params[:id]).order(id: "DESC") }, include: [:user]
    end
end
