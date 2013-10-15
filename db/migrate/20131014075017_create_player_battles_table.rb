class CreatePlayerBattlesTable < ActiveRecord::Migration
  def change
    create_table :player_battles do |t|
      t.references :character
      t.references :battle
      t.timestamps
    end
  end
end
