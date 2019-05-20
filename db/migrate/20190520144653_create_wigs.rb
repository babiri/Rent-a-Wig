class CreateWigs < ActiveRecord::Migration[5.2]
  def change
    create_table :wigs do |t|
      t.string :color
      t.string :size
      t.stringname :style

      t.timestamps
    end
  end
end
