class GamesController < ApplicationController
    def index
        @games = Game.all
    end

    def new
        @game = Game.new
    end

    def create
        @game = Game.create(game_params)
        redirect_to games_path
    end

    def destroy
        @game = Game.find(params[:id])
        @game.destroy
        redirect_to games_path
    end

    private
    def game_params
      params.require(:game).permit(:name, :description)
    end

end
