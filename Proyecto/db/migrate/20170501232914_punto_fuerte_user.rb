class PuntoFuerteUser < ActiveRecord::Migration
  def change
    add_column :users, :puntoFuerte, :string
    add_index :users, :puntoFuerte
  end
end
