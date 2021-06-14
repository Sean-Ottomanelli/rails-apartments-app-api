class LeasesController < ApplicationController

    def index
        leases = Lease.all
        render json: leases
    end

    def create
        lease = Lease.create(lease_params)
        render json: lease
    end

    private
        
        def lease_params
            params.permit(:tenant_id, :apartment_id, :rent)
        end

end
