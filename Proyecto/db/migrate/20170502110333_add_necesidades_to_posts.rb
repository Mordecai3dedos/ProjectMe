class AddNecesidadesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :necesidades, :string
    add_index :posts, :necesidades
  end
end
