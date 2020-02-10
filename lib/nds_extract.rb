$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  i = 0
  total = 0
  while i < director_data[:movies].count
    total += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  return total
end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
my_results = {}
nds
i = 0
x = 0
total = 0
while i < nds.count
  my_results[:name] = nds[i][:name]
  i += 1
end
#binding.pry
while x < nds[0][:movies][0][:worldwide_gross].size
  my_results[:total_gross] = nds[i][:movies][x][:worldwide_gross]
  total += my_results[:total_gross]
  x += 1
end
my_results[:name] = 
end
