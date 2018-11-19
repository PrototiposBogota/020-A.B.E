class Programa < ApplicationRecord

    belongs_to :universidad

    has_many :convocatorium
end
