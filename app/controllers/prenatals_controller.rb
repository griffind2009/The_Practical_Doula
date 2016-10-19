class PrenatalsController < ApplicationController
  def index
    @prenatals = Prenatal.all
  end

  def show
    @prenatal = Prenatal.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @prenatal = Prenatal.new
  end

  def create
    @client = Client.find(params[:client_id])
    @prenatal = @client.prenatals.create(prenatal_params)
    redirect_to prenatal_path(@prenatal)
  end

  def edit
    @prenatal = Prenatal.find(params[:id])
  end

  def update
    @prenatal = Prenatal.find(params[:id])
    @prenatal.update(prenatal_params)
    redirect_to clients_path
  end

  def destroy
    @prenatal = Prenatal.find(params[:id])
    @prenatal.destroy
    redirect_to clients_path
  end


  private
    def prenatal_params
      params.require(:prenatal).permit(:EDD, :BP, :physician)
    end
  end
