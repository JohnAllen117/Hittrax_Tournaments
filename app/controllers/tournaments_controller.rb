class TournamentsController < ApplicationController
  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(tournament_params)

    if @tournament.save
      flash[:notice] = "Tournament Created"
      redirect_to tournament_path(@tournament)
    else
      flash[:notice] = "Invalid Entry"
      render :new
    end
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  private

  def tournament_params
    params.require(:tournament).permit(:name, :date)
  end
end
