class AddReferenceUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :rol, index: true
    add_reference :users, :persona, index: true
  end
end
