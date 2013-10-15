class CharacterBattle < ActiveRecord::Base

  belongs_to :battle
  belongs_to :character

end

# == Schema Information
#
# Table name: player_battles
#
#  id           :integer          not null, primary key
#  character_id :integer
#  battle_id    :integer
#  created_at   :datetime
#  updated_at   :datetime
#

