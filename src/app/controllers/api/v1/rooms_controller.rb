class Api::V1::RoomsController < ApplicationController
    def index
        render json: { status: 200, rooms: Room.all }
    end
 
    def show
      render json: { status: 200, rooms:  Room.find(params[:id])}
    end

    def create
        room = Room.new(room_params)
        if room.save
          render json: { status: 200, room: room }
        else
          render json: { status: 500, message: "roomの作成に失敗しました" }
        end
      end
          
    def destroy
        room = Room.find(params[:id])
        if room.destroy
          render json: { status: 200, room: room }
        else
          render json: { status: 500, message: "roomの削除に失敗しました" }
        end    
    end

    private
    def room_params
        params.require(:room).permit(:user, :chat_id)
    end
end
