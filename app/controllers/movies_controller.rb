class MoviesController < ApplicationController

  def search
    SearchMovie.new(params[:movies][:title]).perform
    redirect_to root_path
  end
end
