class Ciudad < ApplicationRecord

  #Una Ciudad pertenece a un departamento
  belongs_to :departamento

  #Una Ciudad tiene muchas Universidades
  has_many :universidad

end
