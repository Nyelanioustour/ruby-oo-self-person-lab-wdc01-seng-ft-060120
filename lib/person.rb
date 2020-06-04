
class Person

    attr_accessor :bank_account
    attr_reader :name, :hygiene, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def hygiene=(amount)
        @hygiene = min_max_check(amount)
    end

    def happiness=(amount)
        @happiness = min_max_check(amount)
    end

    def min_max_check(health)
        if health > 10
            health = 10
        elsif health < 0
            health = 0
        else
            return health
        end
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
        return "♪ Rub-a-dub just relaxing in the tub ♫"

    end
    
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(colleague)
        self.happiness += 3
        colleague.happiness += 3
        return "Hi #{colleague.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(colleague, topic)
        case topic
        when "politics"
            self.happiness -=2
            colleague.happiness -=2
            return "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness +=1
            colleague.happiness +=1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end
