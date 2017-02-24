class Post < ActiveRecord::Base
  belongs_to :user
  has_many :perfiles
  validates :user_id, presence: true
  validates :contenido, presence: true, length: {minimum: 280, maximum: 600}
  validates :titulo, presence: true, length: {minimum: 5, maximum: 50}
  default_scope -> {order(created_at: :desc)}
end

