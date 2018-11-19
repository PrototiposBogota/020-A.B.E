class Departamento < ApplicationRecord

  #Un Departamento tiene muchas Ciudades o Municipios
  has_many :ciudad

end
