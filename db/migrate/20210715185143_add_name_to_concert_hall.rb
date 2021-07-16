class AddNameToConcertHall < ActiveRecord::Migration[6.1]
  def change
    add_column :concert_halls, :name, :string
  end
end
