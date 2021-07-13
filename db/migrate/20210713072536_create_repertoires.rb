class CreateRepertoires < ActiveRecord::Migration[6.1]
  def change
    create_table :repertoires do |t|
      t.integer :concert_id
      t.string :name
      t.string :composer
      t.integer :duration

      t.timestamps
    end
  end
end
