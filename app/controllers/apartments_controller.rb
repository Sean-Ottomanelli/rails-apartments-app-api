class ApartmentsController < ApplicationController

    def index
        apartments = Apartment.all
        render json: apartments
    end

    def create
        apartment = Apartment.create(apartment_params)
        render json: apartment
    end

    def update
        apartment = Apartment.find(params[:id])
        apartment.update(apartment_params)
        render json: apartment
    end

    def destroy
        apartment = Apartment.find(params[:id])
        apartment.destroy
        head :no_content
    end




    private
        def apartment_params
            params.permit(:number)
        end

end
