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
    redirect_to birth_path(@birth)
  end

  def edit
    @birth = Birth.find(params[:id])
  end

  def update
    @birth = Birth.find(params[:id])
    @birth.update(birth_params)
    redirect_to clients_path
  end

  def destroy
    @birth = Birth.find(params[:id])
    @birth.destroy
    redirect_to clients_path
  end

  private
    def birth_params
      params.require(:birth).permit(:medication, :intervention, :dilation, :effacement)
    end
  end
