class Api::V1::TasksController < ApplicationController
    def index
            render json: { status: 200, tasks: Task.all }
        end

    def show
        task = Task.find(params[:id])

        render json: {status: 200, task: task}
    end

    
    def create
        task = Task.new(task_params)

        if task.save
            render json: { status: 200, task: task }
        else
            render json: { status: 500, message: "Taskの作成に失敗しました" }
        end
    end

    def destroy
        task = Task.find(params[:id])

        if task.destroy
            render json: { status: 200, task: task }
        else
            render json: { status: 500, message: "Taskの削除に失敗しました" }
        end
    end


    def update
        task = Task.find(params[:id])

        if task.update
            render json: { status: 200, task: task }
        else
            render json: { status: 500, message: "Taskの削除に失敗しました" }
        end
    end


    private

    def task_params
      params.require(:task).permit(:title,:logoImage,:description, :purl, :user_id)
    end
end



def update
    user = User.find(params[:id])
        if user.update(user_params)
          render json: { status: 200, user: user }
        else
            render json: { status: 500, message: "userの更新に失敗しました" }
        end
  end

