# SOLID 
# Single Responsibility Principle
# Open / Closed Principle
# Liskov Substitution Principle
# Interface seggregation Principle
# Dependency Inversion Principle

# SRP 
class BankAccount
    def initialize(printer)
        @balance = 0
        @transactions = []
        @printer = printer
    end

    def print_bank_statement(transactions)
        @printer.print_statement(transactions)
    end

    # def print_statement(statement)
    #     # print header
    #     # iterate over statement and print one line for each
    #     # print footer
    # end
end

class Printer
    def print_statement(transactions)
        # print header
        # iterate over transactions and print one line for each
        # print footer
    end
end

printer = Printer.new
bank_account = BankAccount.new() #=> Invalid number of parameters, got 0, expected 1!
bank_account = BankAccount.new(printer)

# Open Closed Principle

class BankAccount
    def initialize(printer)
        @balance = 0
        @transactions = []
        @printer = printer
    end

    def print_bank_statement(transactions)
        @printer.print_statement(transactions)
    end

    # def print_statement(statement)
    #     # print header
    #     # iterate over statement and print one line for each
    #     # print footer
    # end
end

class Printer
    def print_statement(transactions) # a list/array of transactions
        # print header
        # iterate over transactions and print one line for each
        # print footer
    end

    #
    #
    #
end

class Printer2023 < Printer
    # add extra or overwrite functionality
    def print_statement(transaction*) # n number of transaction objects (transaction1, trasaction2, transation*n)
    end
end

print_statement(
    transaction1,
    transaction2,
    transaction3
)

# Liskov Substitution Principle
class Response
    def request
    end

    def response
    end
end

class HTTPResponse < Response
end

class JSONResponse < Response
end

# app.rb

def send_users(Response response): Response
    # return 
end

json_response = JSONResponse.new
send_users(json_response)

# Interface seggregation principle

class Car
    def change_gear
    end
end

class ManualCar < Car

    def change_gear
        return switch_gear_with_gearstick
    end

    private
    def switch_gear_with_gearstick
        # switch gear to gear_nr
    end
end

class AutomaticCar < Car
    def change_gear
        # automaticly change the gear or with paddles
    end

    private
    def automatic_or_paddle_gear_change
    end
end

class Vehicle < ManualCar
    
end

class SuperCar < AutomaticCar

end

car = SuperCar.new

car.switch_gear_with_gearstick() # => Gearstick not found error!

# Dependency Inversion Principle
# tightly coupling, 
class PasswordHasher
    def initialize
        @hasher = Base64Hasher.new
    end

    def hash_password(password)
        @hasher.hash(password)
    end
end

# we want to use a safer hasher, we'd have to change the class or create a new PasswordHasher class
class PasswordHasher264
    def initialize
        @hasher = Base264Hasher.new
    end

    def hash_password(password)
        @hasher.hash(password)
    end
end

# good code, we reverted the dependency on the BaseNHasher
class NewPasswordHasher
    def initialize(hasher = Base64Hasher.new)
        @hasher = hasher
    end

    def hash_password(password)
        @hasher.hash(password)
    end
end

hasher = Base1024Hasher.new
password_hasher = PasswordHasher.new(hasher)

###

hasher = Base64Hasher.new
password_hasher = PasswordHasher(hasher)

password_hasher = PasswordHasher()

