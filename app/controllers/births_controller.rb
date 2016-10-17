class BirthsController < ApplicationController
  def index
    @births = Birth.all
  end

  def show
    @birth = Birth.find(params[:id])
  end

  def new
    @birth = Birth.new
  end

  def create
    @birth = Birth.create(birth_params)
    redirect_to @birth
  end


  private
    def birth_params
      params.require(:birth).permit(:medication, :intervention, :dilation, :effacement)
    end
  end
