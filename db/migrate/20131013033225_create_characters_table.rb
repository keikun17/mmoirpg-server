class CreateCharactersTable < ActiveRecord::Migration
  def change
    create_table :characters_tables do |t|
      t.references :player
      t.string :name
      t.integer :strength
      t.integer :vitality
    end
  end
end
