class ApartmentsController < ApplicationController
    def index
        render json: Apartment.all 
    end
    def show 
        render json: findinst
    end

    def update 
        inst = findinst
        findinst.update(acceptedparams)
        render json: inst
    end
    def create
        render json: Apartment.create(acceptedparams)
    end

    def destroy 
        findinst.destroy
        head :no_content
    end
    private
    def findinst
        Apartment.find(params[:id])
    end
    def acceptedparams
        params.permit(:number)
    end
end
