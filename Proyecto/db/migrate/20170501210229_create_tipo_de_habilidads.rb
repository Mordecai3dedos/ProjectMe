class CreateTipoDeHabilidads < ActiveRecord::Migration
  def change
    create_table :tipo_de_habilidads do |t|
      t.text :tipo_de_habilidad_nombre
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
    add_index :tipo_de_habilidads, [:user_id, :created_at]
  end
end
