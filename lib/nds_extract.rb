$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  hash={}
  total =0 
  director_data[:movies].each do |movie|
  total += movie[:worldwide_gross]
  end
   hash[director_data[:name]] = total
   hash
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
 
  
  nds.each do |director| 
  
    a= gross_for_director(director)
        result[a[:name]]= a.value
  end
 binding.pry
     result
end
