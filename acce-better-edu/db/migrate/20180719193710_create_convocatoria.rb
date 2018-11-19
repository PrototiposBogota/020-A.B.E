class CreateConvocatoria < ActiveRecord::Migration[5.0]
  def change
    create_table :convocatoria do |t|
      t.string :nombre
      t.string :descripcion
      t.timestamps :fecha_inicio
      t.timestamps :fecha_fin
      t.string :estado

      t.timestamps
    end
  end
end
