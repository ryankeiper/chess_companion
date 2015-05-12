class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.belongs_to :user
      t.string :event
      t.string :location
      t.string :date
      t.timestamps null: false
    end
  end
end
