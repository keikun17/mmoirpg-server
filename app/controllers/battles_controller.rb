class BattlesController < ApplicationController

  def index
    @battles = Battle.all
  end

  def start
    Battle.start
    redirect_to battles_path
  end

end
