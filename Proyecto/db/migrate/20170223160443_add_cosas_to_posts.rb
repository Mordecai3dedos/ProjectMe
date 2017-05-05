class AddCosasToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :numero_freelancers, :integer
    add_column :posts, :sugerencias_anunciante, :string

  end
end
