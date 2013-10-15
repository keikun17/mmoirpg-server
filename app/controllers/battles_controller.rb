class BattlesController < ApplicationController

  def index
    @battles = Battle.all.decorate
  end

  def start
    Battle.start
    redirect_to battles_path
  end

end
