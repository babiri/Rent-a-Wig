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
    @wig = Wig.find(params[:wig_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.wig = @wig
    authorize @booking

    if @booking.save
      redirect_to dashboard_path, notice: 'booking created'
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
    params.require(:booking).permit(:start_date, :end_date, :wig_id, :user_id)
  end
end

