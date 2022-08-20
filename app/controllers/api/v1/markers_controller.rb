class Api::V1::MarkersController < ApplicationController
  def index
  end

  def create
    puts params
    render json: { message: 'No marker data provided' }, status: 400 unless params[:marker]
  end

  def destroy
  end
end
