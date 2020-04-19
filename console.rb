require('pry')
require_relative('model/film.rb')
require_relative('model/customer')
require_relative('model/ticket')
require_relative('model/screening')

## DELETE TABLES (REFFERENCED FIRST)

Ticket.delete_all()
Screening.delete_all()
Film.delete_all()
Customer.delete_all()

## INITIALIZE FILMS ##

film1 = Film.new( { 'title' =>  'Mary Poppins', 'price' => '10' } )
film2 = Film.new( { 'title' =>  'Kill Bill Vol.1', 'price' => '13' } )
film3 = Film.new( { 'title' =>  'Kill Bill Vol.2', 'price' => '13' } )
film4 = Film.new( { 'title' =>  'Django Unchained', 'price' => '15' } )
film5 = Film.new( { 'title' =>  'Star Wars III The Revenge of the Sith', 'price' => '8' } )
film6 = Film.new( { 'title' =>  'Star Wars IV A New Hope', 'price' => '12' } )
film7 = Film.new( { 'title' =>  'Star Wars V The Empire Strikes Back', 'price' => '12' } )
film8 = Film.new( { 'title' =>  'Star Wars VI Return of the Jedi', 'price' => '12' } )

## SAVE FILMS ##

film1.save()
film2.save()
film3.save()
film4.save()
film5.save()
film6.save()

## INITIALIZE SCREENING ##

screening1  = Screening.new( { 'film_id' => film1.id, 'show_time' => '15:00'})
screening2  = Screening.new( { 'film_id' => film1.id, 'show_time' => '18:00'})
screening3  = Screening.new( { 'film_id' => film2.id, 'show_time' => '18:45'})
screening4  = Screening.new( { 'film_id' => film3.id, 'show_time' => '21:00'})
screening5  = Screening.new( { 'film_id' => film4.id, 'show_time' => '21:00'})
screening6  = Screening.new( { 'film_id' => film5.id, 'show_time' => '14:00'})
screening7  = Screening.new( { 'film_id' => film6.id, 'show_time' => '16:00'})
screening8  = Screening.new( { 'film_id' => film7.id, 'show_time' => '20:00'})
screening9  = Screening.new( { 'film_id' => film8.id, 'show_time' => '22:30'})
screening10  = Screening.new( { 'film_id' => film1.id, 'show_time' => '00:00'})

screening1.save()
screening2.save()
screening3.save()
screening4.save()
screening5.save()
screening6.save()
screening7.save()
screening8.save()
screening9.save()
screening10.save()


## INITIALIZE CUSTOMERS ##

customer1 = Customer.new( { 'name' => 'Annie', 'funds' => '600' } )
customer2 = Customer.new( { 'name' => 'Elvis', 'funds' => '100' } )
customer3 = Customer.new( { 'name' => 'Ginger', 'funds' => '300' } )
customer4 = Customer.new( { 'name' => 'Jack', 'funds' => '400' } )
customer5 = Customer.new( { 'name' => 'Jill', 'funds' => '800' } )

## SAVE CUSTOMERS ##

customer1.save()
customer2.save()
customer3.save()
customer4.save()
customer5.save()

## INITIALIZE TICEKTS  (now happens in buy_ticket method)#

customer1.buy_ticket_for(film1)
customer2.buy_ticket_for(film1)
customer1.buy_ticket_for(film2)
customer1.buy_ticket_for(film3)
customer3.buy_ticket_for(film2)
customer3.buy_ticket_for(film3)
customer4.buy_ticket_for(film3)
customer5.buy_ticket_for(film3)

## UPDATES ##


# film1.price = '15'
# film1.update()

# customer2.funds = '200'
# customer2.update()

# ticket1.film_id = film4.id
# ticket1.update()



## ASSIGN VARIABLES TO LIST ALL RESULT ##

films = Film.all()
customers = Customer.all()
tickets = Ticket.all()
screenings = Screening.all()

## PRY ##
binding.pry
nil