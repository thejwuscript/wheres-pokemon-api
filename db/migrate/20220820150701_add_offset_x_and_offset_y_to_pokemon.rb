class AddOffsetXAndOffsetYToPokemon < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :offset_x, :integer
    add_column :pokemons, :offset_y, :integer
  end
end
