class ZombiesController < ApplicationController
  def index
    @zombies = Zombie.all
  end

  def new
    @zombie = Zombie.new
  end

  def create
    @zombie = Zombie.new(zombie_params)
      if @zombie.save
        redirect_to zombies_path, notice:"El zombie fué creado con éxito"
      else
        render :new, notice:"El zombie no fué creado con éxito"
    end
  end

  def show
    @zombie = Zombie.find(params[:id])
  end


  private
  def zombie_params
    params.require(:zombie).permit(:name, :graveyard)
  end
end
