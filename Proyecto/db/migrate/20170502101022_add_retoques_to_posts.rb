class AddRetoquesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :numeroDeFreelancers, :integer
    add_column :posts, :habilidadesNecesarias, :string, array: true, default: ["##"]
    add_column :posts, :nivelDeProyecto, :string
    add_column :posts, :tiempoNecesario, :string
    add_column :posts, :sugerencias, :string


    add_index :posts, :numeroDeFreelancers
    add_index :posts, :habilidadesNecesarias
    add_index :posts, :nivelDeProyecto
    add_index :posts, :tiempoNecesario
    add_index :posts, :sugerencias

  end
end
