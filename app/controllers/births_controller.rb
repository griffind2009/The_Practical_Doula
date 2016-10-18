class BirthsController < ApplicationController
  def index
    @births = Birth.all
  end

  def show
    @birth = Birth.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @birth = Birth.new
  end

  def create
    @client = Client.find(params[:client_id])
    @birth = @client.births.create(birth_params)
    redirect_to client_path(@client)
  end


  private
    def birth_params
      params.require(:birth).permit(:medication, :intervention, :dilation, :effacement)
    end
  end
