class PostsController < ApplicationController
  def recieved_index
    user = User.find_by(id: params[:user_id])
    if user
      render json: user.posts_recieved.to_json(methods: [:comments, :likes])
    else
      redirect_to :back
    end
  end
end
