class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render :index
  end
end
