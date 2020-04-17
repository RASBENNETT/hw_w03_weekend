class Ticket

    attr_reader :id
    attr_accessor :customer_id, :film_id

    def intitialize( options )
        @id = options['id'] if options['id']
        @customer_id = options['customer_id']
        @film_id = option['film_id']
    end

end