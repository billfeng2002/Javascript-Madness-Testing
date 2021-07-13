class CreateOrchestras < ActiveRecord::Migration[6.1]
  def change
    create_table :orchestras do |t|
      t.string :name
      t.string :conductor
      t.integer :year_founded

      t.timestamps
    end
  end
end
