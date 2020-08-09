class BankAccount 
    attr_reader :balance
    def initialize
        @balance = 0
    end
    # replaced with attr_reader
    # def balance
    #     @balance
    # end 

    def deposit(money)
        @balance = @balance + money
    end 

    def withdraw(money)
        @balance = @balance - money
    end 
end 