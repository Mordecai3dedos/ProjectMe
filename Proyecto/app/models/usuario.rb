class Usuario < ActiveRecord::Base
  has_many :entradas
end
