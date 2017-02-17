class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
        t.string :usuario_nombre
        t.string :usuario_nombre_usuario

        t.timestamps
    end
  end
end
