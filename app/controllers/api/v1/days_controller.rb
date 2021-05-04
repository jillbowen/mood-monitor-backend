class Api::V1::DaysController < ApplicationController
    before_action :set_day, only: [:show, :destroy]

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
        render json: @day
    end

    private
    
    def day_params
        params.require(:day).permit(:date)
    end

    def set_day
        @day = Day.find(params[:id])
    end
end
