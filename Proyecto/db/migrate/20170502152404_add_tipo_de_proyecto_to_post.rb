class AddTipoDeProyectoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :tipoDeProyecto, :string
  end
end
