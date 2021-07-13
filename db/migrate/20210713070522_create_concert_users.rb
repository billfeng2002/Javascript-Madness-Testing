class CreateConcertUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :concert_users do |t|
      t.integer :user_id
      t.integer :concert_id

      t.timestamps
    end
  end
end
