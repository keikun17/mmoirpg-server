class CreateCharacterBattlesTable < ActiveRecord::Migration
  def change
    create_table :character_battles do |t|
      t.references :winner
      t.references :loser
      t.references :battle
      t.timestamps
    end
  end
end
