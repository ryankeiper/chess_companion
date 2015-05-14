class GamesController < ApplicationController
	before_filter :require_signin

	def index
		@user = current_user
		@tournament = current_user.tournaments.find(params[:tournament_id])
		@games = @tournament.games.all

		respond_to do |format|
		  format.js
		end
	end

	def show
		@game = current_user.tournaments.games.find(params[:id])
	end

	def new
		@game = current_user.tournaments.games.new
	end

	def create
		@game = current_user.tournaments.games.new
	end

	def edit
		@game = current_user.tournaments.games.find(params[:id])
	end

	def update
		@game = current_user.tournaments.games.find(params[:id])
	end

	def destroy
		@game = current_user.tournaments.games.find(params[:id])
	end

end
