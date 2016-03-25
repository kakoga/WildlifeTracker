class SpeciesController < ApplicationController
  def index
    @species = Species.all
    # @species.created_at = Species.created_at
    # @species.each{|i| i.created_at}
  end

  def new
    @species = Species.new
  end

  def create
    @species = Species.new
    @species.name = params[:name]
    @species.save
    redirect_to '/'
  end

  def edit
    @species = Species.find_by(params[:id])
    @species.name = params[:name]
    @species.save
    # click_button 'Save Updated Record'
  end

  def destroy
  end

  def update
  end

def created_at
  @created_at = created_at
end




end
