class BattlesController < ApplicationController

  def index
    @battles = Battle.all.decorate
  end

  def start
    Battle.start
    redirect_to battles_path
  end

  def show
    @battle = Battle.find params[:id]
  end

  def destroy
    @battle = Battle.find params[:id]
    @battle.destroy

    redirect_to battles_path
  end

end
