class FacilitiesController < ApplicationController
  def show
    @facility = current_user.facility
    @facility_availability = @facility.facility_availability
  end

  def index
    @q = Facility.where("Facilities.OptedIn = ? AND Facilities.SId != ?", 1, current_user.SId).ransack(params[:q])
    @facilities = @q.result(distinct: true).uniq
  end

  def edit
    @facility = current_user.facility
  end

  def update
    @facility = Facility.find_by(MasterID: params[:id])
    if @facility.update(facility_params)
      flash[:notice] = "Tournament updated"
      redirect_to facility_path(@facility)
    else
      flash[:notice] = "Invalid Entry"
      render :edit
    end
  end

  def facility_params
    params.require(:facility).permit(:Email, :AddressLine1, :AddressLine2, :Country, :Phone, :Website)
  end
end
