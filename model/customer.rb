def Customer

    attr_reader :id
    attr_accessor :name, :funds

    def intitalize( options )
        @id = options['id'] if options['id']
        @name = options['name']
        @funds = options['funds']
    end

end