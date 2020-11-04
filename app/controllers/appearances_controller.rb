class AppearancesController < ApplicationController

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating) 
    end

    def new 
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.new(appearance_params)
        @episode = Episode.find(appearance_params[:episode_id])
        @appearance.save
        redirect_to episode_path(@episode)    
    end
end
