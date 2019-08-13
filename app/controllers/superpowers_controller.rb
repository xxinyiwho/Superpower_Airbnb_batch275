class SuperpowersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find, only: [:show, :edit, :update, :destroy]

  def index
    @superpowers = Superpower.all
  end

  def show
  end

  def new
    @superpower = Superpower.new
  end

  def create
    @superpower = Superpower.new(superpower_strong_params)
    @superpower.user = current_user
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
    params.require(:superpower).permit(:name, :description, :price, :address, :photo)
  end
end
