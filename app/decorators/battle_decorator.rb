class BattleDecorator < Draper::Decorator

  delegate_all

  def character_1_name
    characters.first.name if characters.first
  end

  def character_2_name
    characters.last.name if characters.last
  end

end
