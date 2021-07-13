class CreateConcertHalls < ActiveRecord::Migration[6.1]
  def change
    create_table :concert_halls do |t|
      t.string :location
      t.integer :date_built

      t.timestamps
    end
  end
end
