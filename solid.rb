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

