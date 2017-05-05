class RemovePerfilesFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :perfiles, :string
  end
end
