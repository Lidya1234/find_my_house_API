module Api
  module V1
    class HousesController < ApplicationController
      def index
        @houses = House.all
        render json: { status: 'SUCCESS', message: 'Loaded houses', data: @houses }, status: :ok
      end

      def show
        @house = House.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Loaded house', data: @house }, status: :ok
      end

      def create
        @house = House.new(house_params)
        if @house.save
          render json: { status: 'SUCCESS', message: 'Saved house', data: @house }, status: :ok
        else
          render json: { status: 'ERROR', message: 'house not saved', data: @house.errors },
                 status: :unprocessable_entry
        end
      end

      def destroy
        @house = House.find(params[:id])
        @house.destroy
        render json: { status: 'SUCCESS', message: 'Deleted house', data: @house }, status: :ok
      end

      private

      def house_params
        params.require(:house).permit(:name, :rank, :image, :price, :decription)
      end
    end
  end
end
