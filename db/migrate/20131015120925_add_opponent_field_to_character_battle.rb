class AddOpponentFieldToCharacterBattle < ActiveRecord::Migration
  def change
    add_column :character_battles, :opponent_id, :integer
    add_column :character_battles, :win, :boolean

    add_index :character_battles, :opponent_id
  end
end
