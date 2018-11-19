class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.string :num_documento
      t.string :nombre
      t.string :pri_apellido
      t.string :seg_apellido
      t.string :genero
      t.string :fecha_nacimiento
      t.string :direccion
      t.string :telefono
      t.string :celular
      t.string :email

      t.timestamps
    end
  end
end
