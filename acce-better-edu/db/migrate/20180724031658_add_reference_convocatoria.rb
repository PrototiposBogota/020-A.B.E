class AddReferenceConvocatoria < ActiveRecord::Migration[5.0]
  def change
    add_reference :convocatoria, :programa, index: true
  end
end
