class RoomsController < ApplicationController

    def index
        @game_id = params[:game_id]
        @rooms = Room.where(game_id: @game_id)
    end

    def show
        @game_id = params[:game_id]
        @room = Room.find_by(id: params[:id], game_id: @game_id)
    end

    def new
        @room = Room.new
        @game_id = params[:game_id]
    end

    def create
        @room = Room.create(room_params)
        redirect_to game_rooms_path(params[:game_id])
    end

    def destroy
        @room = Room.find_by(id: params[:id], game_id: params[:game_id])
        @room.destroy
        redirect_to game_rooms_path(params[:game_id])
    end

    private
    def room_params
      params.require(:room).permit(:name, :pass, :game_id)
    end

end
