$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #binding.pry
  directors_totals(director_data)
   
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
 
  
  nds.each do |director| 
  
    total=0
    director[:movies].each do |arr|
  
      total += arr[:worldwide_gross]
    end
    result[director[:name]]= total
      
  end
 binding.pry
     result
end
