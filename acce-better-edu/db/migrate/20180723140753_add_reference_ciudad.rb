class AddReferenceCiudad < ActiveRecord::Migration[5.0]
  def change
    add_reference :ciudads, :departamento, index: true
  end
end
