class PostsController < ApplicationController

  def show
    post = Post.find(params[:id])
    if post.valid?
    render json: post, status: :created
    else 
      render json: { errors: post.errors }, status: :unprocessable_entity
  end

  def update
    post = Post.find(params[:id])
    if post.valid?
    post.update(post_params)
    render json: post, status: :created
    else  
    render json: { errors: post.errors }, status: :unprocessable_entity
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

end
