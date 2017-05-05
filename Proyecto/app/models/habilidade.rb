class Habilidade < ActiveRecord::Base
  belongs_to :post
  validates :post_id, presence: true
end
