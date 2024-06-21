# app/controllers/bookings_controller.rb
class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :destroy]
  before_action :set_restaurant_or_client

  def new
    @booking = Booking.new
  end

  def create
    @booking = @restaurant.bookings.new(booking_params)
    if @booking.save
      redirect_to @restaurant, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to @client ? client_path(@client) : restaurant_path(@restaurant), notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to @client ? client_path(@client) : restaurant_path(@restaurant), notice: 'Booking was successfully destroyed.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_restaurant_or_client
    if params[:restaurant_id]
      @restaurant = Restaurant.find(params[:restaurant_id])
    elsif params[:client_id]
      @client = Client.find(params[:client_id])
    end
  end

  def booking_params
    params.require(:booking).permit(:booking_size, :booking_date, :booking_time, :booking_length, :restaurant_id, :client_id, :bid_amount)
  end
end
