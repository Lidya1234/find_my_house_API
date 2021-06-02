class FavoritesController < ApplicationController
    def index 
        @user=User.find(params[:user_id])
        @favorites = @user.favorites
        # @favorites = Favorite.all
        render json: {status: 'SUCCESS', message: 'Loaded favorites', data: @favorites},status: :ok
    end
    def show
        @favorite = Favorite.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded favorite', data: @favorite},status: :ok
    end
    def create
        @favorite = Favorite.new(favorite_params)
        if @favorite.save
            render json: {status: 'SUCCESS', message: 'Saved favorite', data: @favorite},status: :ok
        else
            render json: {status: 'ERROR', message: 'favorite not saved', data: @favorite.errors},status: :unprocessable_entry
        end
    end
    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        render json: {status: 'SUCCESS', message: 'Deleted favorite', data: @favorite},status: :ok
    end
    def update
        @favorite = Favorite.find(params[:id])
        if @favorite.update_attributes(favorite_params)
            render json: {status: 'SUCCESS', message: 'Updated favorite', data: @favorite},status: :ok
        else
            render json: {status: 'ERROR', message: 'favorite not saved', data: @favorite.errors},status: :unprocessable_entry
        end
    end
    private
    def favorite_params
       
        params.require(:favorite).permit(:user_id, :house_id)
    end
end