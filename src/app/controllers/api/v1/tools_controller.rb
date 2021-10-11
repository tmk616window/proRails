class Api::V1::ToolsController < ApplicationController
    def index
        render json: { status: 200, tool: Tool.where(params[:task_id]) }
      end

    def show
        render json: { status: 200, prolang: Tool.where(task_id: params[:id]) }
      end      
    
    def create
        tool = Tool.new(tool_params)
    
        if tool.save
          render json: { status: 200, tool: tool }
        else
          render json: { status: 500, message: "Toolの作成に失敗しました" }
        end
      end

      def update
        tool = Tool.find(params[:id])

        if tool.update(tool_params)
            render json: { status: 200, tool: tool }
        else
            render json: { status: 500, message: "Toolの更新に失敗しました" }
        end
      end
          

    def destroy
        tool = Tool.find(params[:id])
    
        if tool.destroy
          render json: { status: 200, tool: tool }
        else
          render json: { status: 500, message: "Toolの削除に失敗しました" }
        end    
    end

        private

        def Tool_params
            params.require(:tool).permit(:name, :task_id)
         end
end
