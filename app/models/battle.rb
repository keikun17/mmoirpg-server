class Battle < ActiveRecord::Base
  has_many :characters

  def self.start
    battle = Battle.create

    characters = Character.all
    characters.shuffle

    character_1 = characters.shift
    character_2 = characters.shift

    PlayerBattle.create(
      battle: battle, character_1: character_1, character_2: character_2
    )
  end
end
