require('pry')
require_relative('model/film.rb')

film1 = Film.new( { 'title' =>  'Mary Poppins', 'price' => '10' } )
film1.save()

film2 = Film.new( { 'title' =>  'Kill Bill Vol.1', 'price' => '13' } )
film2.save()

film3 = Film.new( { 'title' =>  'Kill Bill Vol.2', 'price' => '13' } )
film3.save()

film3 = Film.new( { 'title' =>  'Django Unchained', 'price' => '15' } )
film3.save()

film4 = Film.new( { 'title' =>  'Star Wars III The Revenge of the Sith', 'price' => '8' } )
film4.save()

film4 = Film.new( { 'title' =>  'Star Wars IV A New Hope', 'price' => '10' } )
film4.save()



binding.pry
nil