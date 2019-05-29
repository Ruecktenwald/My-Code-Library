class AddStatusToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :status, :integer, default: 0
  end
end
