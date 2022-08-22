class Api::V1::TimersController < ApplicationController
  def index
  end

  def show
  end

  def create
    timer = Time.parse(timer_params[:start_time])
    saved_timer = Timer.create(start_time: timer)
    render json: saved_timer
  end

  def update
    timer = Timer.find(params[:id])
    end_time = Time.parse(timer_params[:end_time])
    timer.update(end_time:)
    puts timer
    render json: timer
  end

  private

  def timer_params
    params.require(:timer).permit(:start_time, :end_time)
  end
end
