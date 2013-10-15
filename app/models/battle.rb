class Battle < ActiveRecord::Base

  has_many :character_battles, dependent: :destroy
  has_many :characters, through: :character_battles

  def self.start
    battle = self.create

    characters = Character.all
    characters.shuffle

    character_1 = characters.shift
    character_2 = characters.shift

    CharacterBattle.create( battle: battle, character: character_1)
    CharacterBattle.create( battle: battle, character: character_2)

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

