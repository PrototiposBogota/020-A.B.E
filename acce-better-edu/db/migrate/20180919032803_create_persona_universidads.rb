class CreatePersonaUniversidads < ActiveRecord::Migration[5.0]
  def change
    create_table :persona_universidads do |t|

      t.belongs_to :universidad
      t.belongs_to :persona

      t.timestamps
    end
  end
end
