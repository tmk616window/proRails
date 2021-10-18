class Api::V1::TestController < ApplicationController
  def index
      taskRank = Task.find(Like.group(:task_id).select(:task_id).order('count(task_id) desc').limit(3).pluck(:task_id))

      # render {status: 200, tasks: taskRank}

    render json: {status: 200,  task: taskRank}
  end
end
