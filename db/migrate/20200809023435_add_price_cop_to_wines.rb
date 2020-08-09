class AddPriceCopToWines < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :price_cop, :string
  end
end
