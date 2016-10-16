class ChartsController < ApplicationController
  def index
    @charts = Chart.all
  end

  def show
    @chart = Chart.find(params[:client_id])
  end

  def new
    @chart = Chart.new
  end

  def create
    @chart = Chart.create
    redirect_to @chart
  end

end
