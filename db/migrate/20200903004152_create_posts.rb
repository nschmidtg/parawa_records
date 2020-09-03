class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :type
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end