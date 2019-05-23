class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user

    if @booking.save
      redirect_to @booking, notice: 'booking created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy

    redirect_to index_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :wig, :user)
  end
end

