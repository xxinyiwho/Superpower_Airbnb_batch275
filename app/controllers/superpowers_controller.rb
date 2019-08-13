class SuperpowersController < ApplicationController

  before_action :find, only: [:show, :edit, :update, :destroy]

  def index
    @superpowers = Superpower.all
  end

  def show
    # find method
  end

  def new
    @superpower = Superpower.new
  end

  def create
    @superpower = Superpower.new(superpower_strong_params)
    if @superpower.save
      redirect_to superpower_path(@superpower)
    else
      render :new
    end
  end

  def edit
    # find method
  end

  def update
    # find method
    @superpower.update(superpower_strong_params)
    redirect_to superpower_path(@superpower)
  end

  def destroy
    # find method
    @superpower.destroy
    redirect_to root_path
  end

  private

  def find
    @superpower = Superpower.find(params[:id])
  end

  def superpower_strong_params
    params.require(:superpowers).permit(:name, :description, :price, :address)
  end
end
