class PostsController < ApplicationController
  def index
    posts = Post.all

    render json: posts
  end

  def create
    post = Post.new(
      title: params[:title],
      context: params[:context],
      published: true,
      user_id: params[:user_id]
    )

    if post.save
      render json: post, status: :created
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end
end
