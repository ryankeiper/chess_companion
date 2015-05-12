class GamesController < ApplicationController
	before_filter :require_signin

	def index
		@games = current_user.tournaments.games.all
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
