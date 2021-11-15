class Api::V1::LikesController < ApplicationController      
      def show
        like = Like.where(task_id: params[:id])
        render json: { status: 200, like: like }
      end
        
      def create
        like = Like.new(like_params)
        if like.save
            render json: { status: 200, like: like }
        else
            render json: { status: 500, message: like.errors }
        end
      end
    
      def destroy
        like = Like.find(params[:id])
        if like.destroy
            render json: { status: 200, like: like }
        else
            render json: { status: 500, message: like.errors }
        end
      end
    
      private
      def like_params
         params.require(:like).permit(:user_id, :task_id)
      end    
end
