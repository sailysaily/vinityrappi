class AddAvailabilityToWines < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :availability, :string
  end
end
