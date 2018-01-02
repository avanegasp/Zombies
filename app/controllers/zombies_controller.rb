class ZombiesController < ApplicationController
  before_action :authenticate_model! , only: [:new]

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
        render :new,
        notice: "El zombie no fué creado con éxito"
    end
  end

  def show
    @zombie = Zombie.find(params[:id])
  end

  def edit
    @zombie = Zombie.find(params[:id])
  end

  def update
    zombie = Zombie.find(params[:id])
    if zombie.update(zombie_params)
      redirect_to zombies_path, notice: "Successfully created..."
    else
      render :edit,
      notice: "Don't Successfully created..."
    end
  end

  def destroy
    zombie = Zombie.find(params[:id])
    zombie.destroy
    redirect_to zombies_path, notice: "Delete Successfully"
  end

  private
  def zombie_params
    params.require(:zombie).permit(:name, :graveyard)
  end
end
