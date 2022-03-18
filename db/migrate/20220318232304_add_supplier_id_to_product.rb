class AddSupplierIdToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :balls, :supplier_id, :integer
  end
end
