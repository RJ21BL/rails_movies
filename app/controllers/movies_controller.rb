class MoviesController < ApplicationController
  def index#displays a list of all records. *View* #Default page.
    @movies = Movie.all
    #I am retrieving all the movie records.
  end

  def show#displays a specific record. *View*
    @movie = Movie.find(params[:id])
  end

  def new#returns an HTML form for creating a new record. *View*
    @movie = Movie.new
  end

  def create#creates and saves a new record. *Proccessing/Redirects*
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path
    else
      render '/new'
    end
  end

  def edit#returns an HTML form for editing a record. *View*
    @movie = Movie.find(params[:id]) 
  end

  def destroy#deletes a specific record. *Proccessing/Redirects*
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to root_path
  end

  def update#updates a specific record. *Proccessing/Redirects*
    @movie = Movie.find(params[:id])
    #Params is accessing the data from the http request
    #to be processed by the controller action.
    #It is currently returning the ID embedded in the resource path,
    #and ultimately telling the 'find' call which object/record to
    #retrieve from the database.
    if @movie.update(movie_params)
      #I am updating the retrieved object's attributes with the
      #data from the submitted form.
      redirect_to root_path
    else
      render '/edit'
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :director)
  end
end
