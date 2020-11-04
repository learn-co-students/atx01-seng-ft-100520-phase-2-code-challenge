class AppearancesController < ApplicationController

    def apperance_params
        params.require(:apperance).permit(:guest_id, :episode_id, :rating) 
    end

    def new 
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.new(appearance_params)
        @apperance.save
        redirect_to episode_path(@episode)    
    end
end
