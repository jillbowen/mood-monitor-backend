class Api::V1::MoodsController < ApplicationController

    before_action: :set_mood

    def index
        @moods = @day.moods
        render json: @moods
    end

    def create
        @mood = @day.moods.new(mood_params)
        if @mood.save
            render json: @mood
        else
            render json: {error: 'Error creating new mood'}
        end
    end

    def show
        render json: @mood
    end

    def destroy
        @mood.destroy
    end

    private
    
    def mood_params
        params.require(:mood).permit(:happy_rating, :relaxed_rating, :awake_rating, :calm_rating, :confidence_rating, :journal_entry, :day_id)
    end

    def set_mood
        @mood = Mood.find(params[:day_id])
    end
end
