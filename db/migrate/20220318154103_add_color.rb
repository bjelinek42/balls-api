class AddColor < ActiveRecord::Migration[7.0]
  def change
    add_column :balls, :color, :string
  end
end
