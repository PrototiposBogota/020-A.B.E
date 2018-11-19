class CreateProgramas < ActiveRecord::Migration[5.0]
  def change
    create_table :programas do |t|
      t.string :codigo
      t.string :nombre
      t.string :descripcion
      t.string :estado

      t.timestamps
    end
  end
end
