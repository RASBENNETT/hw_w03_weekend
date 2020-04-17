class Film

    attr_reader :id
    attr_accessor :title, :funds

    def initialize( options )
        @id = options['id'] if options['id']
        @title = options['title']
        @funds = options['funds']
    end

    

end