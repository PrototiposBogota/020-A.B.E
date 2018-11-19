class AddReferenceUniversidad < ActiveRecord::Migration[5.0]
  def change
    add_reference :universidads, :ciudad, index: true
  end
end
