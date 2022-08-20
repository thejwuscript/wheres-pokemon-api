class Api::V1::MarkersController < ApplicationController
  wrap_parameters include: [:pageX, :pageY, :name], format: :json

  def index
  end

  def create  
    x = marker_params['pageX']
    y = marker_params['pageY']
    pokemon_name = marker_params['name']
    all_pokemon = Pokemon.all
    result = all_pokemon.any? { |pokemon| pokemon.found?(x.to_i, y.to_i, pokemon_name) }
    if result
      puts "You've found #{pokemon_name}!"
      render json: { message: "You've found #{pokemon_name}!", position: { x: x, y: y } }, status: :ok
    else
      puts "Sorry, no dice."
      render json: { message: "Sorry, no dice." }
    end
  end

  def destroy
  end

  private

  def marker_params
    params.require(:marker).permit(:pageX, :pageY, :name)
  end
end
