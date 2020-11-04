class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    appearances = Appearance.select {|a| a.guest_id == @guest.id}
    appearances.sort_by! {|a| -a.rating}
    episode_ids = appearances.map {|a| a.episode_id}
    @episodes = []

    episode_ids.each do |episode|
      @episodes << Episode.find {|e| e.id == episode}
    end
    @episodes.uniq!
  end
end
