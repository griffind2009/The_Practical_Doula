class BasicsController < ApplicationController
  def index
    @basics = Basic.all
  end

  def show
    @basic = Basic.find(params[:client_id])
  end

  def new
    @basic = Basic.new
  end

  def create
    @client = Client.find(params[:client_id])
    @basic = @client.basics.create(basic_params)
    redirect_to client_path(@client)
  end


  private
    def basic_params
      params.require(:basic).permit(:name, :address, :age)
    end
  end
