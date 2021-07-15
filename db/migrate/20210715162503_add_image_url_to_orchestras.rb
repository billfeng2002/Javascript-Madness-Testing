class AddImageUrlToOrchestras < ActiveRecord::Migration[6.1]
  def change
    add_column :orchestras, :image_url, :string
  end
end
