class Universidad < ApplicationRecord

  #Una Universidad pertenece a una Ciudad
  belongs_to :ciudad

  #Una Universidad tiene muchos programas
  has_many :programa

  has_many :persona_universidad
  has_many :persona, through: :persona_universidad

end
