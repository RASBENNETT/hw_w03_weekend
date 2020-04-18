require_relative('../db/sql_runner.rb')

class Customer

    attr_reader :id
    attr_accessor :name, :funds

    def initialize( options )
        @id = options['id'] if options['id']
        @name = options['name']
        @funds = options['funds']
    end

    def save()
        sql = "INSERT INTO customers
        (name, funds)
        VALUES
        ($1, $2)
        RETURNING id"
        values = [@name, @funds]
        customer = SqlRunner.run(sql, values).first
        @id = customer['id'].to_i
    end

    def update()
        sql = "UPDATE customers 
        SET (name, funds) = ($1, $2)
        WHERE id = $3"
        values = [@name, @funds, @id]
        SqlRunner.run(sql, values)
    end

    ### CLASS METHODS ###

    def self.all()
        sql = "SELECT * FROM customers"
        customers = SqlRunner.run(sql)
        return self.map_items(customers)
    end

    def self.delete_all()
        sql = "DELETE FROM customers"
        SqlRunner.run(sql)
    end

    def self.map_items( customers )
        return customers.map { |customer| Customer.new(customer) }
    end

end