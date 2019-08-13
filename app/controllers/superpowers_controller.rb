class SuperpowersController < ApplicationController
  before_action :find

  def show
    # @superpower = Superpower.find(params[:id])
  end

  def index
    @superpowers = Superpower.all
  end

  def new
    @superpower = Superpower.new
  end

  def create
    @superpower = Superpower.new(superpower_strong_params)
    if @superpower.save
      redirect_to superpowers_path(@superpower)
    else
      render :new
    end
  end

  def destroy
    @superpower.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    @superpower.update(superpower_strong_params)
    redirect_to superpower_path(@superpower)
  end

  private

  def find
    @superpower = Superpower.find(params[:id])
  end

  def superpower_strong_params
    params.require(:superpower).permit(:name, :description, :price, :photo, :address)
  end
end
