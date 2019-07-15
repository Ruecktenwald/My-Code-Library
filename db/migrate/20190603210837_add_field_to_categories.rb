class AddFieldToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :slug, :string
    Category.all.each { |c| c.slug = c.id.to_s + "-" + c.name.downcase.strip.gsub(/\s+/, "-"); c.save }
    add_index :categories, :slug, unique: true
    change_column :categories, :slug, :string, :null => false
  end
end
