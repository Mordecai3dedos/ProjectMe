class AddCaracteristicasToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :participantes, :string, array: true
  end
end
