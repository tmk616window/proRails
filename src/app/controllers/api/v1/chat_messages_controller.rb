class Api::V1::ChatMessagesController < ApplicationController
    def index
        render json: { status: 200, messages: ChatMessage.where(message_id: params[:id]).order(id: "DESC") }, include: [:user]
    end

    def show
        render json: { status: 200, messages: ChatMessage.where(message_id: params[:id]) }, include: [:user]
    end

    def create
        chatMessage = ChatMessage.new(message_params)
    
        if chatMessage.save
          render json: { status: 200, message: chatMessage }, include: [:user]
        else
          render json: { status: 500, message: "commentの作成に失敗しました" }
        end
      end


      private
      def message_params
          params.permit(:text, :message_id,:chat_id, :user_id)
       end


end
