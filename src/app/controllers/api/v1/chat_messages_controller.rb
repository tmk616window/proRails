class Api::V1::ChatMessagesController < ApplicationController
    def index
        render json: { status: 200, messages: ChatMessage.where(chat_id: params[:id]) }
    end

    def show
        render json: { status: 200, messages: ChatMessage.where(chat_id: params[:id]) }
    end
end
