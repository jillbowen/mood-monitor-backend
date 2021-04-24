class Api::V1::DaysController < ApplicationController

    def index
        @days = Day.all 
        render json: @days
    end

    def create
        @day = Day.new(day_params)
        if @day.save
            render json: @day
        else
            render json: {error: 'Error creating new day'}
        end
    end

    def show
        @day = Day.find(params[:id])
        render json: @day
    end

    def destroy
        @day = Day.find(params[:id])
        @day.destroy
    end

    private
    
    def day_params
        params.require(:day).permit(:date)
    end
end
