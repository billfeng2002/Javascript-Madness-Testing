class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.integer :orchestra_id
      t.integer :concert_hall_id
      t.string :name
      t.float :price
      t.datetime :time
      t.string :type

      t.timestamps
    end
  end
end
