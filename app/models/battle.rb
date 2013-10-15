class Battle < ActiveRecord::Base

  has_many :character_battles, dependent: :destroy
  has_many :characters, through: :character_battles

  def self.start
    battle = self.create

    characters = Character.all
    characters.shuffle

    while characters.size >= 2
      character_1 = characters.shift
      character_2 = characters.shift
      CharacterBattle.create( battle: battle, character: character_1, opponent: character_2, win: false)
      CharacterBattle.create( battle: battle, character: character_2, opponent: character_1, win: true)
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

