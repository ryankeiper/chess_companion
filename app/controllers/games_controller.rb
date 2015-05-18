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
		@user = current_user
		@tournament = current_user.tournaments.find(params[:tournament_id])
		@game = @tournament.games.new(game_params)
		@game.save!

		respond_to do |format|
		  format.html {redirect_to user_tournaments_path(current_user)}
		  format.json {render json: @game}
		  format.js
		end
	end

	def edit
		@game = current_user.tournaments.games.find(params[:id])
	end

	def update
		@game = current_user.tournaments.games.find(params[:id])
	end

	def destroy
		@user = current_user
		@tournament = current_user.tournaments.find(params[:tournament_id])
		@game = @tournament.games.find(params[:id])
		@game.destroy

		respond_to do |format|
		  format.html {redirect_to user_tournaments_path}
		  format.js   
		end
	end

	private

	def game_params
		params.require(:game).permit(:round, :white, :white_rating, :black, :black_rating, :pgn)
	end

end
