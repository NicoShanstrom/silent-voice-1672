class MovieActorsController < ApplicationController
    def new

    end

    def create
        @movie = Movie.find(params[:id])
        @actor = Actor.find(params[:id])

        @movie.actors << @actor
        redirect_to "/movies/#{@movie.id}"
    end
end