class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render :index
  end

  def create
    @pet = Pet.create(
      name: params[:name],
      image: params[:image],
      price: params[:price],
    )
    render :show
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render :show
  end

  def update
    @pet = Pet.find_by(id: params[:id])
    @pet.update(
      name: params[:name] || @pet.name,
      image: params[:image] || @pet.image,
      price: params[:price] || @pet.price,
    )
    render :show
  end
end
