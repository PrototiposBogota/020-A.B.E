class AddReferencePersona < ActiveRecord::Migration[5.0]
  def change
    add_reference :personas, :tipo_documento, index: true
  end
end
