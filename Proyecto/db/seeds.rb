# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

usuario1 = Usuario.new
usuario1.usuario_nombre="David"
usuario1.usuario_nombre_usuario="Mordecai3dedos"
usuario1.save!

Entrada.create(entrada_texto: 'Este proyecto es super importante para mi, consiste en pegarme un tiro en las muelas y
que nadie se de cuenta porque soy un cacas y hago un grado superior, de hecho, quiero hacer muchas cosas, adios', usuario: usuario1)

Post.create(contenido: 'Este proyecto es super importante para mi, consiste en pegarme un tiro en las muelas y
que nadie se de cuenta porque soy un cacas y hago un grado superior, de hecho, quiero hacer muchas cosas, adios', user_id: 4)