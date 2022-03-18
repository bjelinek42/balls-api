class BallsController < ApplicationController

  def index
    ball = Ball.all
    render json: ball
  end

  def show
    ball = Ball.find_by(id: params[:id])
    render json: ball
  end

  def create
    ball = Ball.new({name: params[:name], size: params[:size], price: params[:price]})
    if ball.save
      render json: ball
    else
      render json: ball.errors.full_messages
    end
  end

  def update
    ball = Ball.find_by(id: params[:id])
    ball.name = params[:name]
    ball.size = params[:size]
    ball.price = params[:price]
    if ball.save
      render json: ball
    else
      render json: ball.errors.full_messages
    end
  end

  def destroy
    ball = Ball.find_by(id: params[:id])
    ball.delete
  end
end
