class CharactersController < ApplicationController

  before_filter :authenticate_player!

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    Character.create(character_params)
    redirect_to :index
  end

  private

  def character_params
    params[:character].permit([:name, :strength, :vitality])
  end

end
