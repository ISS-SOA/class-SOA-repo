require 'rubygems'


require 'ruby-tmdb3'

# setup your API key
Tmdb.api_key = "775efff01e8c74eb076499befbec64a9"

# setup your default language
Tmdb.default_language = "en"

#@movie = TmdbMovie.find(:title => "Iron Man", :limit => 1)
# => <OpenStruct>

#@movie.title
# => "Iron Man"