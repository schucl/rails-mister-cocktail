class RemovePhotoFromCocktails < ActiveRecord::Migration[5.0]
  def change
    remove_column :cocktails, :photo, :string
  end
end
