class CreateCharacterBattlesTable < ActiveRecord::Migration
  def change
    create_table :character_battles do |t|
      t.references :character
      t.references :battle
      t.timestamps
    end
  end
end
