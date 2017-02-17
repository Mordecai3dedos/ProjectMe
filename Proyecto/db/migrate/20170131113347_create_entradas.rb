class CreateEntradas < ActiveRecord::Migration
  def change
    create_table :entradas do |t|

      t.string :entrada_texto
      t.references :usuario, index: true, foreign_key: true

      t.timestamps
    end
  end
end
