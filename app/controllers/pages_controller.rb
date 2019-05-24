class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user
    @my_wigs = current_user.wigs
    @my_bookings = current_user.bookings
    @my_booked_wigs = current_user.wigs_booked
  end
end
