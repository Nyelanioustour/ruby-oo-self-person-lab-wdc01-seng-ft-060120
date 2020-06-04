class Person
    attr_reader :name, :happiness, :hygiene
    attr_writer :happiness, :hygiene 



 


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(salary)
        self.bank_total += salary
        return "all about the benjamins"

    end


    def take_bath
        self.hygiene += 4
        if self.hygiene > 10
            self.hygiene = 10
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫".

    end
 






end

Bob = Person.new("Bob")
end
# binding.pry