class CreatePerfiles < ActiveRecord::Migration
  def change
    create_table :perfiles do |t|
      t.text :nombre_perfil_de_informatico
    end
  end
end
