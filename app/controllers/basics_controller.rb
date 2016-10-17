class BasicsController < ApplicationController
  def index
    @basics = Basic.all
  end

  def show
    @basic = Basic.find(params[:id])
  end

  def new
    @basic = Basic.new
  end

  def create
    @basic = Basic.create(basic_params)
    redirect_to @basic
  end


  private
    def basic_params
      params.require(:basic).permit(:name, :address, :age)
    end
  end
