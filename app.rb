require 'pry'
require './Building'

house = Building.new "Kyle's House", "123 Denver Ave", 3, 5
apartment = Building.new "Ben's Apartment", "321 Boulder Blvd", 1, 1
old_folks_home = Building.new "New Horizons", "MLK", 4, 480 #Fermi estimate

binding.pry
0