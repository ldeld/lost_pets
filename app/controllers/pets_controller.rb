class PetsController < ApplicationController
  def index
    @pets = Pet.all.order(found_on: :desc)
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save

    redirect_to pet_path(@pet)
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update

  end


  private

  def pet_params
    params.require(:pet).permit(:name, :species, :found_on)
  end
end
