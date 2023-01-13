class RoomsController < ApplicationController

    def index
        @rooms = Room.all
    end

    def show
        @room = Room.find(params[:id])
    end

    def new
        @room = Room.new
    end

    def create
        @room = Room.create(room_params)
        redirect_to rooms_path(@game_id)
    end

    def destroy
        @room = Room.find(params[:id])
        @room.destroy
        redirect_to rooms_path(@game_id)
    end

    private
    def room_params
      params.require(:room).permit(:id, :name)
    end
end
