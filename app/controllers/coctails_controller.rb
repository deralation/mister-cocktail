class CoctailsController < ApplicationController
  before_action :set_coctail, only: [:show]

  def index
    @coctails = Coctail.all
  end

  def new
    @coctail = Coctail.new
  end

  def create
    @coctail = Coctail.new(coctail_params)
    if @coctail.save
      redirect_to coctail_path(@coctail)
    else
      render :new
    end
  end

  def delete
  end

  def show
  end

  private

  def coctail_params
    params.require(:coctail).permit(:name)
  end

  def set_coctail
    @coctail = Coctail.find(params[:id])
  end
end
