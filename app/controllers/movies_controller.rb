class MoviesController < ApplicationController
    layout false

    protect_from_forgery with: :null_session
     
    def index
       movies = Movie.all
       render json: MovieSerializer.new(movies, options).serialized_json
     end

     def show
      movie = Movie.find_by(slug: params[:slug]) 
      render json: MovieSerializer.new(movie, options).serialized_json
     end

     def create
      #  movie = Movie.new(movie_params)
       movie = Movie.new(name: params[:name])
       if movie.save
         render json: MovieSerializer.new(movie).serialized_json
       else
         render json: { error: movie.errors.messages }, status: 422
       end
     end

     def update
      movie = Movie.find_by(slug: params[:slug])
        if movie.update(name:params[:name])
          render json: MovieSerializer.new(movie, options).serialized_json
        else
          render json: { error: movie.errors.messages }, status: 422
        end
     end
     
     def destroy
         movie = Movie.find_by(slug: params[:slug])
         if movie
           movie.destroy
           head:no_content
         else
          render json: errors, status: 422
         end
     end

     private

    #  def movie_params
    #   #  param.require(:movie).permit(:name, :image_url)
    #    params.require(:movie).permit(:name)
    #  end 

     def options  
       @options ||= { include: %i[reviews] }
     end

     def errors(record)
      { errors: "Movie doesn't exists" }
    end
end
