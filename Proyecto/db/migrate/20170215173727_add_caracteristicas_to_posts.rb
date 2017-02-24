class AddCaracteristicasToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :participantes, :string, array: true, default: ["##"]
  end
end
