class Api::V1::ProlongsController < ApplicationController
    def index
        render json: { status: 200, prolong: Prolong.where(params[:task_id]) }
      end

    def show
        render json: { status: 200, prolang: Prolong.where(task_id: params[:id]) }
      end      
    
    def create
        prolong = Prolong.new(prolong_params)
    
        if prolong.save
          render json: { status: 200, prolong: prolong }
        else
          render json: { status: 500, message: "Prolongの作成に失敗しました" }
        end
      end

      def update
        prolong = Prolong.find(params[:id])

        if prolong.update(prolong_params)
            render json: { status: 200, prolong: prolong }
        else
            render json: { status: 500, message: "Prolongの更新に失敗しました" }
        end
      end
          

    def destroy
        prolong = Prolong.find(params[:id])
    
        if prolong.destroy
          render json: { status: 200, prolong: prolong }
        else
          render json: { status: 500, message: "Prolongの削除に失敗しました" }
        end    
    end

        private

        def prolong_params
            params.require(:prolong).permit(:lange, :task_id)
         end
end
