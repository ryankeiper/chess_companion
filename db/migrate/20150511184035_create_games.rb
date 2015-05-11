class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :user_id
      t.string :event
      t.date :date
      t.string :name
      t.integer :rating
      t.string :color
      t.string :opponent
      t.integer :opponent_rating
      t.string :pgn
      t.timestamps null: false
    end
  end
end
