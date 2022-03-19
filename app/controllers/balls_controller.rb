class BallsController < ApplicationController

  def index
    @ball = Ball.all
    render template: "balls/index"
  end

  def show
    @ball = Ball.find_by(id: params[:id])
    render template: "balls/show"
  end

  def create
    @ball = Ball.new({
      name: params[:name], 
      size: params[:size], 
      price: params[:price], 
      color: params[:color],
      supplier_id: params[:supplier_id]})
    if @ball.save
      render template: "balls/show"
    else
      render json: @ball.errors.full_messages
    end
  end

  def update
    @ball = Ball.find_by(id: params[:id])
    @ball.name = params[:name] || @ball.name
    @ball.size = params[:size] || @ball.size
    @ball.price = params[:price] || @ball.price
    @ball.color = params[:color] || @ball.color
    @ball.color = params[:supplier_id] || @ball.color
    if @ball.save
      render template: "balls/show"
    else
      render json: @ball.errors.full_messages
    end
  end

  def destroy
    @ball = Ball.find_by(id: params[:id])
    @ball.delete
  end
end
