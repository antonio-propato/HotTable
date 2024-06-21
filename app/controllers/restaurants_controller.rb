class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/1
  def show
    @restaurant = Restaurant.find(params[:id])
    @clients = Client.all
    @booking = Booking.new
    @bookings = @restaurant.bookings.includes(:client) # Eager load clients for bookings
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_params
      params.require(:restaurant).permit(:restaurant_name, :city, :address, :telephone, :email, :capacity,
                                         :opening_time_mon, :closing_time_mon, :opening_time_tue, :closing_time_tue,
                                         :opening_time_wed, :closing_time_wed, :opening_time_thu, :closing_time_thu,
                                         :opening_time_fri, :closing_time_fri, :opening_time_sat, :closing_time_sat,
                                         :opening_time_sun, :closing_time_sun)
    end
end
