class ContestantsController < ApplicationController

    def index 
        @contestants = Contestant.all
        render :json => @contestants
    end

end