class AffirmationsController < ApplicationController

    def index 
        affirmation = Affirmation.all
        render json: affirmation
    end
end
