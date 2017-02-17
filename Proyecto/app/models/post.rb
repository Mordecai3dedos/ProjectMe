class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :contenido, presence: true, length: {minimum: 280, maximum: 600}
  default_scope -> {order(created_at: :desc)}
end

