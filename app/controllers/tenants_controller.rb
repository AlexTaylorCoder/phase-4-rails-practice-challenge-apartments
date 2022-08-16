class TenantsController < ApplicationController
    def index
        render json: Tenant.all 
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
        render json: Tenant.create(acceptedparams)
    end

    def destroy 
        findinst.destroy
        head :no_content
    end
    private
    def findinst
        Tenant.find(params[:id])
    end
    def acceptedparams
        params.permit(:name,:age)
    end
end
