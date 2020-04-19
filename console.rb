require('pry')
require_relative('model/film.rb')
require_relative('model/customer')
require_relative('model/ticket')

## DELETE TABLES (REFFERENCED FIRST)

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()

## INITIALIZE FILMS ##

film1 = Film.new( { 'title' =>  'Mary Poppins', 'price' => '10' } )
film2 = Film.new( { 'title' =>  'Kill Bill Vol.1', 'price' => '13' } )
film3 = Film.new( { 'title' =>  'Kill Bill Vol.2', 'price' => '13' } )
film4 = Film.new( { 'title' =>  'Django Unchained', 'price' => '15' } )
film5 = Film.new( { 'title' =>  'Star Wars III The Revenge of the Sith', 'price' => '8' } )
film6 = Film.new( { 'title' =>  'Star Wars IV A New Hope', 'price' => '10' } )

## SAVE FILMS ##

film1.save()
film2.save()
film3.save()
film4.save()
film5.save()
film6.save()

## INITIALIZE CUSTOMERS ##

customer1 = Customer.new( { 'name' => 'Annie', 'funds' => '600' } )
customer2 = Customer.new( { 'name' => 'Elvis', 'funds' => '100' } )
customer3 = Customer.new( { 'name' => 'Ginger', 'funds' => '300' } )

## SAVE CUSTOMERS ##

customer1.save()
customer2.save()
customer3.save()

## INITIALIZE TICEKTS ##

# ticket1 = Ticket.new( { 'customer_id' => customer1.id, 'film_id' => film1.id } )
# ticket1.save()

# ticket2 = Ticket.new( { 'customer_id' => customer2.id, 'film_id' => film2.id } )
# ticket2.save()

# ticket3 = Ticket.new( { 'customer_id' => customer2.id, 'film_id' => film3.id } )
# ticket3.save()

# ticket4 = Ticket.new( { 'customer_id' => customer3.id, 'film_id' => film1.id } )
# ticket4.save()

# ticket5 = Ticket.new( { 'customer_id' => customer3.id, 'film_id' => film2.id } )
# ticket5.save()



customer1.buy_ticket_for(film1)
customer2.buy_ticket_for(film1)
customer1.buy_ticket_for(film2)



## UPDATES ##


film1.price = '15'
film1.update()

customer2.funds = '200'
customer2.update()

# ticket1.film_id = film4.id
# ticket1.update()



## ASSIGN VARIABLES TO LIST ALL RESULT ##

films = Film.all()
customers = Customer.all()
tickets = Ticket.all()


## PRY ##
binding.pry
nil