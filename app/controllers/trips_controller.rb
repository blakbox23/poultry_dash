class TripsController < ApplicationController
  before_action :authenticate_user!
  def index
    @trips = Trip.all.order(created_at: :desc)
  end

  def new
    @trip = Trip.new
  end

  def create 
    @trip = current_user.trips.build(trip_params)

    if @trip.save
      flash[:notice] = 'New trip created'
    else
      flash[:alert] = 'Trip not successfully created'
    end

    redirect_to root_path
  end

  def edit 
    @trip = Trip.find(params[:id])
  end

  def update
  
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)

    if @trip.save
      flash[:notice] = 'Congratulations! Trip closed'
    else
      flash[:alert] = 'Trip not successfully created'
    end

    redirect_to root_path
  end
  

private

  def trip_params
    params.require(:trip).permit(:capital, :feed, :s_date, :s_chick, :e_date, :e_chick, :gross, :trans, :labour, :other)
  end

end
