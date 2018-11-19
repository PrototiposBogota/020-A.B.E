class Persona < ApplicationRecord

    belongs_to :tipo_documento

    has_many :user

    has_many :persona_universidad
    has_many :universidad, through: :persona_universidad
end
