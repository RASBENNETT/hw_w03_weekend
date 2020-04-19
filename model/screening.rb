

class Screening

    attr_reader :id
    attr_accessor :film, :show_time

    def initialize( options )
        @id = options['id'] if options['id']
        @film = options['film']
        @show_time = options['show_time']
    end

end