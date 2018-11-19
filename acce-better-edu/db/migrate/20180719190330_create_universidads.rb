class CreateUniversidads < ActiveRecord::Migration[5.0]
  def change
    create_table :universidads do |t|
      t.string :nit
      t.string :nombre
      t.string :dereccion
      t.string :telefono
      t.string :estado

      t.timestamps
    end
  end
end
