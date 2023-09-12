# SOLID 
# Single Responsibility Principle
# Open / Closed Principle
# Liskov Substitution Principle
# Interface seggregation Principle
# Dependency Inversion Principle


class BankAccount
    def initialize(printer)
        @balance = 0
        @transactions
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