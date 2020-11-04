class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def show 
    @appearance = Appearance.find(params[:id])
  end

  def create
    @appearance = Appearance.new(appearance_params)
    @episode = Episode.find {|e| e.id == appearance_params[:episode_id].to_i}

    if @appearance.save
      flash[:notice] = "Appearance created!"
      redirect_to episode_path(@episode)
    else
      render "new"
    end
  end

  private
    def appearance_params
      params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end
