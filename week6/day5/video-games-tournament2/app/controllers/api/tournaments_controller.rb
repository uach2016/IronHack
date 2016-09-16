class Api::TournamentsController < ApplicationController
  def index
    tournaments = Tournament.all
    render json: tournaments
  end

  def create
    tournament = Tournament.create(tournament_params)
    unless tournament.valid?
      render json: {error: 'Tournament not valid', status: 404}
      return
    end
    render json: tournament, status: 201
  end

  def destroy
    tournament = Tournament.find_by(id: params[:id])
    tournament.destroy
    render json: tournament
  end

private

  def tournament_params
    params.require(:tournament).permit(:name)
  end


end
