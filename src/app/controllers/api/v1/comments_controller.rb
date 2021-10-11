class Api::V1::CommentsController < ApplicationController
    def index
        render json: { status: 200, comment: Comment.where(params[:task_id]) }
      end

    def show
        render json: { status: 200, comment: Comment.where(task_id: params[:id]) }
      end      
    
    def create
        comment = Comment.new(comment_params)
    
        if comment.save
          render json: { status: 200, comment: comment }
        else
          render json: { status: 500, message: "commentの作成に失敗しました" }
        end
      end

      def update
        comment = Comment.find(params[:id])

        if comment.update(comment_params)
            render json: { status: 200, comment: comment }
        else
            render json: { status: 500, message: "commentの更新に失敗しました" }
        end
      end
          

    def destroy
        comment = Comment.find(params[:id])
    
        if comment.destroy
          render json: { status: 200, comment: comment }
        else
          render json: { status: 500, message: "commentの削除に失敗しました" }
        end    
    end

        private

        def comment_params
            params.require(:comment).permit(:point, :text, :task_id, user_id)
         end
end
