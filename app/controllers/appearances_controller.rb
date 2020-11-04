class AppearancesController < ApplicationController

    def new
      @appearance = Appearance.new
    end
  
    def create 
        @appearance = Appearance.new(appearance_params)
        if @appearance.save
            redirect_to @appearance
        else
            render :new
        end
    end
  

  
    def appearance_params 
      params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end