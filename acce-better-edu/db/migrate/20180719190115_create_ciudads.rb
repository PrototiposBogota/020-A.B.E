class CreateCiudads < ActiveRecord::Migration[5.0]
  def change
    create_table :ciudads do |t|
      t.string :codigo
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
