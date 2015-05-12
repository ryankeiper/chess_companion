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
		@tournament = current_user.tournaments.new
	end

	def edit
		@tournament = current_user.tournaments.find(params[:id])
	end

	def update
		@tournament = current_user.tournaments.find(params[:id])
	end

	def destroy
		@tournament = current_user.tournaments.find(params[:id])
	end
end
