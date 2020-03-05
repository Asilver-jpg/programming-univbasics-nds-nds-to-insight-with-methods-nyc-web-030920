$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  total =0 
  director_data[:movies].each do |movie|
  total += movie[:worldwide_gross]
  end
   total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
 
  
  nds.each do |director| 
  
    a= gross_for_director(director)
       result[director:name] = a
  end
 binding.pry
     result
end
