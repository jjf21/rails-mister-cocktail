class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find([params[:cocktail_id]])
    puts @cocktail
    puts params[:cocktail_id]
    @dose = @cocktail.doses.new
  end

  def create
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end


  def destroy
    @dose.destroy

    redirect_to doses_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
