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
  row_index = 0
  while nds.length > row_index do
    #title
    pp nds[row_index]
    row_index += 1
    column_index = 0
    if nds[row_index][column_index] == "Stephen Spielberg"
      puts nds[rows_index][column_index][:name]
    else
      column_index += 1
    end
  end
end
