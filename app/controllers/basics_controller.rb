class BasicsController < ApplicationController
  def index
    @basics = Basic.all
  end

  def show
    @basic = Basic.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @basic = Basic.new
  end

  def create
    @client = Client.find(params[:client_id])
    @basic = @client.basics.create(basic_params)
    redirect_to basic_path(@basic)
  end


  private
    def basic_params
      params.require(:basic).permit(:name, :address, :age)
    end
  end
