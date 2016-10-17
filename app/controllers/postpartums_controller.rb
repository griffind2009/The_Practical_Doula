class PostpartumsController < ApplicationController
  def index
    @postpartums = Postpartum.all
  end

  def show
    @postpartum = Postpartum.find(params[:id])
  end

  def new
    @postpartum = Postpartum.new
  end

  def create
    @postpartum = Postpartum.create(postpartum_params)
    redirect_to @postpartum
  end


  private
    def postpartum_params
      params.require(:postpartum).permit(:support, :recovery, :questions)
    end
  end
