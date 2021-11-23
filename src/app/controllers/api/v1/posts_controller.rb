class Api::V1::PostsController < ApplicationController
    def show
        render json: { status: 200, messages: ChatMessage.where(chat_id: params[:id]) }, include: [:user]
    end
end
