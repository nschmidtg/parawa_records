class AddArtistYearAndChangeTypeToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :artist, :string
    add_column :posts, :year, :integer
    rename_column :posts, :type, :content_type
  end
end
