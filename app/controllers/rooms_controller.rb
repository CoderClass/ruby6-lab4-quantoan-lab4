class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new 
    @room = Room.new
  end

  def show
    @room = Room.find_by_id(params[:id])
  end

  def create
    @room = Room.new(room_params)
    @room.save!
    redirect_to root_path

  end

  private
  def room_params
    params.require(:room).permit(:name)
  end
end
