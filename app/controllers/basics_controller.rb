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

  def edit
    @basic = Basic.find(params[:id])
  end

    def update
      @basic = Basic.find(params[:id])
      @basic.update(basic_params)
      redirect_to clients_path
    end

    def destroy
      @basic = Basic.find(params[:id])
      @basic.destroy
      redirect_to clients_path
    end


  private
    def basic_params
      params.require(:basic).permit(:name, :address, :age)
    end
  end
