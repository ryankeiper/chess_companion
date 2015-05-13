class TournamentsController < ApplicationController
	before_filter :require_signin

	def index
		@tournaments = current_user.tournaments.all
	end

	def show
		@tournament = current_user.tournaments.find(params[:id])
	end

	def new
		@tournament = current_user.tournaments.new
	end

	def create
		@tournament = current_user.tournaments.new(tournament_params)
		@tournament.save!

		respond_to do |format|
		  format.html {redirect_to user_tournaments_path}
		  format.js # Defaults to rendering tournaments/create.js.erb
		end

	end

	def edit
		@tournament = current_user.tournaments.find(params[:id])
	end

	def update
		@tournament = current_user.tournaments.find(params[:id])
	end

	def destroy
		@tournament = current_user.tournaments.find(params[:id])
		@tournament.destroy
		respond_to do |format|
		  format.html {redirect_to user_tournaments_path}
		  format.js
		end
	end

	private

	def tournament_params
		params.require(:tournament).permit(:event, :location, :date)
	end

end
