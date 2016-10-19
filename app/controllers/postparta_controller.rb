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

  def edit
    @postpartum = Postpartum.find(params[:id])
  end

  def update
    @postpartum = Postpartum.find(params[:id])
    @postpartum.update(postpartum_params)
    redirect_to postpartum_path(@postpartum)
  end

  def destroy
    @postpartum = Postpartum.find(params[:id])
    @postpartum.destroy
    redirect_to clients_path
  end

  private
    def postpartum_params
      params.require(:postpartum).permit(:support, :recovery, :questions)
    end
  end
