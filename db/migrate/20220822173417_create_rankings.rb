class CreateRankings < ActiveRecord::Migration[7.0]
  def change
    create_table :rankings do |t|
      t.string :name
      t.string :duration

      t.timestamps
    end
  end
end
