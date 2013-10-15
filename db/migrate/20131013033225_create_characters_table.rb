class CreateCharactersTable < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :player
      t.string :name
      t.integer :strength
      t.integer :vitality
      t.timestamps
    end
  end
end
