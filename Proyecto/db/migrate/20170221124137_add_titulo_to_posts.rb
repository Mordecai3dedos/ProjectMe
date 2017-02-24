class AddTituloToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :titulo, :string
  end
end
