class Api::V1::TestController < ApplicationController
  def index
      @taskRank = Task.find(Like.group(:task_id).select(:task_id).order('count(task_id) desc').limit(3).pluck(:task_id))
    render json: {status: 200,  task:@taskRank},include: [:prolongs.as_json(only: [:lange]), :user.as_json(only: [:email])]
  end
end
