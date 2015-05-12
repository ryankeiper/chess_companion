class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :tournament
      t.integer :round
      t.string :white
      t.integer :white_rating
      t.string :black
      t.integer :black_rating
      t.text :pgn
      t.timestamps null: false
    end
  end
end
