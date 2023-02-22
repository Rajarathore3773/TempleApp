class BookingsController < ApplicationController

    skip_before_action :verify_authenticity_token


  def index 
   bookings =Booking.all
    render json:bookings , status:200
  end
  
    def show
       booking =Booking.find_by(id: params[:id])
        if booking 
            render json:booking, status:200
        else
            render json:{error:"This id booking is not Show"}
        end 
    end

def create 
   booking =Booking.create(booking_params)
    if booking.save
        render json:booking , status:200
    else
        render json:{error:"Not Create Any booking Data" }
    end
end

def update 
    #debugger
   booking =Booking.find_by(id: params[:id])
    if booking
       booking.update(booking_params)
        render json:booking, status:200
    else 
        render json:{error:"Again Update booking data"}
    end
end

def destroy
   booking =Booking.find_by(id: params[:id])
    if booking
       booking.destroy
        render json:{error: "This id booking data is deleted"}
    else
        render json:{error: "This id booking data is not available"}
    end
end
private
def booking_params
    params.require(:booking).permit(:bookingdate, :checkoutdate, :temple_id)
end
end
