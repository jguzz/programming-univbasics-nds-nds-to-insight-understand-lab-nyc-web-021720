$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS
require "pp"
def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles
  nds = directors_database
  row_index = 0 #row contains name
  while nds.length > row_index do
    #name
    column_index = 0 #column contains movies
    if nds[row_index][:name] == "Stephen Spielberg"
      while column_index < nds[row_index][:movies][column_index].length do
        print "#{nds[row_index][:movies][column_index][:title]}\n"
        column_index += 1
      end
    else
      row_index += 1
    end
  end
end
