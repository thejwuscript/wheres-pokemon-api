class Api::V1::RankingsController < ApplicationController
  def index
    rankings = Ranking.all
    sorted = rankings.includes(:timer).sort_by do |ranking|
      start = ranking.timer.start_time
      finish = ranking.timer.end_time
      finish - start
    end
    render json: sorted
  end

  def show
  end

  def create
    ranking = Ranking.new(ranking_params)
    if ranking.save
      render json: ranking
    else
      render json: { errors: ranking.errors }, status: 422
    end
  end

  private

  def ranking_params
    params.require(:ranking).permit(:name, :duration, :timer_id)
  end

end
