class Api::V1::DaysController < ApplicationController

    def index
        @days = Day.all 
        render json: @days
    end

    def create

    end

    def show

    end

    def destroy

    end

    private
    
    def day_params
        params.require(:day).permit(:date)
    end
end
