class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
  @episose = Episode.find(params[:id])
  @guests = Guest.all
  end
end
