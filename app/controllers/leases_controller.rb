class LeasesController < ApplicationController
    def create
        render json: Lease.create(acceptedparams)
    end

    def destroy 
        findinst.destroy
        head :no_content
    end
    private
    def findinst
        Lease.find(params[:id])
    end
    def acceptedparams
        params.permit(:rent)
    end
end
