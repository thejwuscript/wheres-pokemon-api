class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :locationX
      t.integer :locationY

      t.timestamps
    end
  end
end
