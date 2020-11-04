class AppearancesController < ApplicationController

def index
 @appearances = Appearance.all 
end

def show
@appearance = Appearance.find(params[:id])
end

def new
@appearance = Appearance.new
end

def create
  new_appearance = Appearance.new(appearance_params)
 if !new_appearance.valid?
    flash[:errors] = new_appearance.errors.full_messages

    redirect_to new_appearance_path
 else 
    new_appearance.save
    redirect_to episodes_path(new_appearance.episode)

 end
end





private
def appearance_params
params.require(:appearance).permit(:rating, :guest_id, :episode_id)
end
end
