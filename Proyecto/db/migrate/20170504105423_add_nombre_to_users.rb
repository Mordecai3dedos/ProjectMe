class AddNombreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nombreDeUsuario, :string
    add_column :users, :edadDelUsuario, :integer
    add_column :users, :DescripcionUsuario, :string
    add_column :users, :EducacionUsuario, :string
    add_column :users, :LogrosUsuario, :string
    add_column :users, :ExperienciasUsuario, :string
  end
end
