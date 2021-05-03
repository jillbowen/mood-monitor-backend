class Api::V1::MoodsController < ApplicationController

    before_action :set_day

    def index
        @moods = Mood.all
        render json: @moods
    end

    def create
        @mood = @day.moods.new(mood_params)
        if @day
            @mood.save
            render json: @day
        else
            render json: {error: 'Error creating new mood'}
        end
    end

    def show
        @mood = Mood.find(params[:id])
        render json: @mood
    end

    def destroy
        @mood = Mood.find(params['id'])
        @day = Day.find(@mood.day_id)
        @mood.destroy
        render json: @day
    end

    private
    
    def mood_params
        params.require(:mood).permit(:happy_rating, :relaxed_rating, :awake_rating, :calm_rating, :confidence_rating, :journal_entry, :day_id)
    end

    def set_day
        @day = Day.find(params[:day_id])
    end
end
