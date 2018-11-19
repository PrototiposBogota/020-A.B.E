class AddReferencePrograma < ActiveRecord::Migration[5.0]
  def change
    add_reference :programas, :universidad, index: true
  end
end
