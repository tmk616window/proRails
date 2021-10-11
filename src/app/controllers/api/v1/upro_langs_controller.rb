class Api::V1::UproLangsController < ApplicationController
    def index
        render json: { status: 200, uproLang: UproLang.where(params[:task_id]) }
      end

    def show
        render json: { status: 200, uproLang: UproLang.where(task_id: params[:id]) }
      end      
    
    def create
        uproLang = UproLang.new(uproLang_params)
    
        if uproLang.save
          render json: { status: 200, uproLang: uproLang }
        else
          render json: { status: 500, message: "uproLangsの作成に失敗しました" }
        end
      end

      def update
        uproLang = UproLang.find(params[:id])

        if uproLang.update(uproLang_params)
            render json: { status: 200, uproLang: uproLang }
        else
            render json: { status: 500, message: "uproLangsの更新に失敗しました" }
        end
      end
          

    def destroy
        uproLang = UproLang.find(params[:id])
    
        if uproLang.destroy
          render json: { status: 200, uproLang: uproLang }
        else
          render json: { status: 500, message: "uproLangsの削除に失敗しました" }
        end    
    end

        private

        def uproLang_params
            params.require(:uproLang).permit(:lang, :task_id)
         end
end
