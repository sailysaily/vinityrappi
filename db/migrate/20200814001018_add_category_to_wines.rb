class AddCategoryToWines < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :category, :integer
  end
end
