class Api::V1::RankingsController < ApplicationController
  def index
    rankings = Ranking.all
    render json: rankings
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
    params.require(:ranking).permit(:name, :duration, :timerId)
  end

end
