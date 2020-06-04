require 'pry'

class Person
    attr_reader :name, :bank_total, :happiness, :hygiene


    def initialize(name)
        @name = name
        @bank_total = 25
        @happiness = 8
        @hygiene = 8

    end

    def clean?
        self.hygiene > 7
    end

    def clean?
        self.happiness > 7
    end

    


    # def bank_deposit(amount)
    #     @bank_total = @bank_total + amount

    # end

    # def bank_withdraw(amount)
    #     @bank_total = @bank_total - amount

    # end



end

Bob = Person.new("Bob")

binding.pry