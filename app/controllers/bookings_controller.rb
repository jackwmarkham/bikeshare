class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

#rating methods
def voteone
  @booking = Booking.find(params[:id])
  @booking.vote_by :voter => current_user, :vote_weight => 1
  redirect_to bookings_path
end

def votetwo
  @booking = Booking.find(params[:id])
  @booking.vote_by :voter => current_user, :vote_weight => 2
  redirect_to bookings_path
end

def votethree
  @booking = Booking.find(params[:id])
  @booking.vote_by :voter => current_user, :vote_weight => 3
  redirect_to bookings_path
end

def votefour
  @booking = Booking.find(params[:id])
  @booking.vote_by :voter => current_user, :vote_weight => 4
  redirect_to bookings_path
end

def votefive
  @booking = Booking.find(params[:id])
  @booking.vote_by :voter => current_user, :vote_weight => 5
  redirect_to bookings_path
end

def unvote
  @booking = Booking.find(params[:id])
  @booking.unvote_by current_user
  redirect_to bookings_path
end




  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)
#Applies current user's id to the booking when created
    @booking.user_id = current_user.id if current_user
#Calculates the transaction value when booking is created
    @booking.price = (@booking.bike.price_day*(@booking.end.to_date - @booking.begin.to_date))
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:user_id, :bike_id, :begin, :end, :message, :confirmation, :price)
    end
end
