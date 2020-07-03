class CreateItemImages < ActiveRecord::Migration[6.0]
  def change
    create_table :item_images do |t|
      t.integer :item_id
      t.string :image_url
      t.timestamps
    end
  end
end
