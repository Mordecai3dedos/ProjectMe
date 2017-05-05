class Post < ActiveRecord::Base
  belongs_to :user
  has_many :perfiles
  has_many :disponibilidad_de_proyectos
  has_many :nivel_de_proyectos
  has_many :tiempo_de_proyectos
  has_many :habilidades
  validates :user_id, presence: true
  validates :contenido, presence: true, length: {minimum: 280, maximum: 600}
  validates :titulo, presence: true, length: {minimum: 5, maximum: 50}
  default_scope -> {order(created_at: :desc)}
end

