class SearchMovie

  def initialize (title)
    @title = title
  end

  def login_moviedb
    Tmdb::Api.key(ENV['MOVIEDB_KEY'])
  end

  def perform (movie)
    login_moviedb
    search_movie(@title)
  end

  def search_movie (title)
    Tmdb::Movie.find(@title)
  end

end
