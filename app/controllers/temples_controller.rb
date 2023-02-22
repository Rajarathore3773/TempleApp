class TemplesController < ApplicationController
    skip_before_action :verify_authenticity_token


  def index 
    temples =Temple.all
    render json:temples , status:200
  end
def show
    temple = Temple.find_by(id: params[:id])
    if temple 
        render json:temple, status:200
    else
        render json:{error:"This Temple is not find"}
    end 
end

def create 
    temple = Temple.create(temple_params)
    if temple.save
        render json:temple , status:200
    else
        render json:{error:"Not Create Any Temple Data so use all fields"}
    end
end

def update 
    temple = Temple.find_by(id: params[:id])
    if temple
        temple.update(temple_params)
        render json:temple, status:200
    else 
        render json:{error:"This temples id not available for  Update "}
    end
end

def destroy
    temple = Temple.find_by(id: params[:id])
    if temple
        temple.destroy
        render json:{error:"This Temple  id data is deleted"}
    else
        render json: {error:"This Temple id is not available for delete"}
    end
end

private
def temple_params
    params.require(:temple).permit(:t_name, :t_lordname, :t_location, :t_description)
end
end
