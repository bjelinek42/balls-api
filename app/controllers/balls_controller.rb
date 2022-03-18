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
    ball.save
    render json: ball
  end

  def update
  end

  def delete
  end
end
