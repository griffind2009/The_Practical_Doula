class PrenatalsController < ApplicationController
  def index
    @prenatals = Prenatal.all
  end

  def show
    @prenatal = Prenatal.find(params[:id])
  end

  def new
    @prenatal = Prenatal.new
  end

  def create
    @prenatal = Prenatal.create(prenatal_params)
    redirect_to @prenatal
  end


  private
    def prenatal_params
      params.require(:prenatal).permit(:EDD, :BP, :physician)
    end
  end
