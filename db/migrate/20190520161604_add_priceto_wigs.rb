class AddPricetoWigs < ActiveRecord::Migration[5.2]
  def change
    add_column :wigs, :price, :float
  end
end
