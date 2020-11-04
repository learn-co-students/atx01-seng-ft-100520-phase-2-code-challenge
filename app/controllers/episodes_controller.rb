class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    appearances = Appearance.select {|a| a.episode_id == @episode.id}
    guest_ids = appearances.map {|a| a.guest_id}
    @guests = []
    @ratings = appearances.map {|a| a.rating}

    guest_ids.each do |guest|
      @guests << Guest.find {|g| g.id == guest}
    end
    @guests.uniq!
  end
end
