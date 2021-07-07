class AddAncestryToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :ancestry, :string
    add_index :categories, :ancestry
    add_column :categories, :name, :string

  end
end
