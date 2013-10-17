class Battle < ActiveRecord::Base

  has_many :character_battles, dependent: :destroy

  def self.start
    battle = self.create

    characters = Character.all
    characters.shuffle

    while characters.size >= 2
      character_1 = characters.shift
      character_2 = characters.shift
      CharacterBattle.create( battle: battle, winner: character_1, loser: character_2)
    end

  end

end

# == Schema Information
#
# Table name: battles
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

