class AddColumnItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :category, :integer
    add_column :items, :seller, :integer
    add_column :items, :buyer, :integer
    add_column :items, :condition, :string
    add_column :items, :postage_payer, :string
    add_column :items, :prefecture, :string
    add_column :items, :standby_day, :string

  end
end
