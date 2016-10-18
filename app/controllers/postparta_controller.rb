class PostpartaController < ApplicationController
  def index
    @postpartums = Postpartum.all
  end

  def show
    @postpartum = Postpartum.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @postpartum = Postpartum.new
  end

  def create
    @client = Client.find(params[:client_id])
    @postpartum = @client.postpartums.create(postpartum_params)
    redirect_to client_path(@client)
  end


  private
    def postpartum_params
      params.require(:postpartum).permit(:support, :recovery, :questions)
    end
  end
