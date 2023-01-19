class AuthorsController < ApplicationController
  
  def show
    author = Author.find(params[:id])
    if author.valid?
      render json: author, status: :created
    else
      render json: { errors: author.errors }, status: :unprocessable_entity
  end

  def create
    author = Author.create(author_params)
    if authod.valid?
      render json: author, status: :created
    else 
      render json: { errors: author.errors }, status: :unprocessable_entity
  end

  private
  
  def author_params
    params.permit(:email, :name)
  end
  
end
