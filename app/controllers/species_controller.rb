class SpeciesController < ApplicationController
  def index
  end

  def create
    params[:name]
    @species = Species.new()
    @species.name = params[:name]
    @species.save
  end

  def edit
  end

  def destroy
  end

  def update
  end
end
