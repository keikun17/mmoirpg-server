class CharacterBattle < ActiveRecord::Base

  belongs_to :battle
  belongs_to :character
  belongs_to :opponent, class_name: "Character"

  delegate :name, to: :character, allow_nil: true, prefix: true

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

