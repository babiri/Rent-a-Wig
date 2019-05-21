class AddPhotoToWigs < ActiveRecord::Migration[5.2]
  def change
    add_column :wigs, :photo, :string
  end
end
