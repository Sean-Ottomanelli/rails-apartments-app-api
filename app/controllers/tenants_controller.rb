class TenantsController < ApplicationController

    def index
        tenants = Tenant.all
        render json:tenants
    end

    def create
        tenant = Tenant.new(tenant_params)

        if tenant.valid?
            tenant.save
            render json:tenant
        else
            render json: {errors: tenant.errors.full_messages}
        end
    end

    def update
        tenant = Tenant.find(params[:id])
        tenant.update(tenant_params)

        if tenant.valid?
            render json: tenant
        else
            render json: {errors: tenant.errors.full_messages}
        end
    end

    def destroy
        tenant = Tenant.find(params[:id])
        tenant.destroy
        head :no_content
    end

    private

    def tenant_params
        params.permit(:name, :age)
    end

end
