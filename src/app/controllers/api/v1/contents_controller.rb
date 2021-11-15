class Api::V1::ContentsController < ApplicationController
    def index
        render json: { status: 200, content: Content.all }
      end

    def show
        render json: { status: 200, contents: Content.where(task_id: params[:id]) }
      end      
    
    def create
        content = Content.new(content_params)
    
        if content.save
          render json: { status: 200, content: content }
        else
          render json: { status: 500, message: "contentの作成に失敗しました" }
        end
      end

      def update
        content = Content.find(params[:id])

        if content.update(content_params)
            render json: { status: 200, content: content }
        else
            render json: { status: 500, message: "contentの更新に失敗しました" }
        end
      end
          

    def destroy
        content = Content.find(params[:id])
    
        if content.destroy
          render json: { status: 200, content: content }
        else
          render json: { status: 500, message: "contentの削除に失敗しました" }
        end    
    end

        private

        def content_params
            params.require(:content).permit(:title, :text, :task_id)
         end
end
