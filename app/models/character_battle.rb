class CharacterBattle < ActiveRecord::Base

  belongs_to :battle

  belongs_to :winner, class_name: "Character"
  belongs_to :loser, class_name: "Character"

  delegate :name, to: :loser, allow_nil: true, prefix: true
  delegate :name, to: :winner, allow_nil: true, prefix: true

end

# == Schema Information
#
# Table name: character_battles
#
#  id           :integer          not null, primary key
#  winner_id_id :integer
#  loser_id_id  :integer
#  battle_id    :integer
#  created_at   :datetime
#  updated_at   :datetime
#

