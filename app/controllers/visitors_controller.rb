class VisitorsController < ApplicationController

    skip_before_action :verify_authenticity_token


  def index 
    visitors =Visitor.all
    render json:visitors , status:200
  end
  
    def show
        visitor = Visitor.find_by(id: params[:id])
        if visitor 
            render json:visitor, status:200
        else
            render json:{error:"This id  Visitor is not Show"}
        end 
    end

def create 
    visitor = Visitor.create(visitor_params)
    if visitor.save
        render json:visitor , status:200
    else
        render json:{error:"Not Create Any Visitor Data so use all fields"}
    end
end

def update 
    visitor = Visitor.find_by(id: params[:id])
    if visitor
        visitor.update(visitor_params)
        render json:visitor, status:200
    else 
        render json:{error:"Again Update Visitor data"}
    end
end

def destroy
    visitor = Visitor.find_by(id: params[:id])
    if visitor
        visitor.destroy
        render json: {error: "Visitor data is deleted for this id"}
    else
        render json:{error: "Visitor id is not available"}
    end
end
private
def visitor_params
    params.require(:visitor).permit(:v_name, :v_age, :v_email, :v_govermentid, :v_contact, :temple_id)
end
end
