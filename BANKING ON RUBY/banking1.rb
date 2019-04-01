class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name,balance=100)
        @name = name
      @balance = balance
    end
    
    private
    def pin
      @pin = 1234
    end
    
    private
    def pin_error
      return "Access denied: incorrect PIN."
    end
    
    public
    def diplay_balance(pin_number)
        puts @pin == pin_number ? "Balance: #{@balance}" : pin_error
    end
    
    def withdraw(pin_number, amount)
      puts  @pin == pin_number ? "Withdrew #{amount}. New balance: $#{@balance}" : pin_error
    end
  end
  
  checking_account = Account.new("Rodrigo",100000)