class DosesController < ApplicationController
  before_action :set_coctail

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.coctail = @coctail
    if @dose.save
      redirect_to coctail_path(@coctail)
    else
      render "coctails/show"
    end

  end

  def destroy
    @dose = @coctail.doses.find(params[:id])
    @dose.destroy
    redirect_to coctail_path(@coctail)
  end

  private
  def set_coctail
    @coctail = Coctail.find(params[:coctail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
