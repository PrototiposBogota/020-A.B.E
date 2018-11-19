class Rol < ApplicationRecord

    has_many :permiso
    has_many :user
end
