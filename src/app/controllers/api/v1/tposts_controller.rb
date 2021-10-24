class Api::V1::TpostsController < ApplicationController
    before_action :set_post, only: %i[destroy]

    def index
      render json: { posts: Tpost.all.order("created_at DESC") }
    end
  
    def create
      post = Tpost.new(post_params)  
      post.save
    end
  
    def destroy
      post = Tpost.find(params[:id])
      post.destroy
    end
  
    private
  
      def set_post
        @post = Tpost.find(params[:id])
      end
  
      def post_params
        params.permit(:content, :image)
      end  
end
