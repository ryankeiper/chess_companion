class GamesController < ApplicationController
	before_filter :require_signin

	def index
		@games = current_user.games.all
	end

	def show
		@game = Game.find(params[:id])
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new
	end

	def edit
		@game = Game.find(params[:id])
	end

	def update
		@game = Game.find(params[:id])
	end

	def destroy
		@game = Game.find(params[:id])
	end

end
