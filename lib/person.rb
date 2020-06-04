require 'pry'
class Person
    attr_reader :name, :happiness
    attr_writer :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def bank_account
        @bank_account 
    end

    def bank_account=(amount)
        @bank_account = amount
    end

    def hygiene=(amount)
        @hygiene = amount
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0 
            @hygiene = 0
        else
            return @hygiene
        end
        @hygiene
    end

    def hygiene
        @hygiene
    end

    def happiness=(amount)
        @happiness = amount
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            return @happiness
        end
        @happiness
    end

    def happiness
        @happiness
    end




    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"

    end


    def take_bath
        self.hygiene += 4
        if self.hygiene > 10
            self.hygiene = 10
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫"

    end
    
    def work_out

       self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end



        
 






end

Bob = Person.new("Bob")
# binding.pry