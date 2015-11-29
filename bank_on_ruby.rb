class Account
   attr_reader :name 
   attr_reader :balance
   
   def initialize(name, balance=100)
       @name = name
       @balance = balance
   end
   
   public
   def display_balance(pin_number)
       puts pin_number == pin ? "Balance: $#{@balance}" : pin_error
   end
   
   def withdraw(pin_number, amount)
      if pin_number == pin
          if amount <= @balance
            @balance -= amount
            puts "Withdrew #{amount}. New balance: $#{balance}."
          else
              puts overdraw_error
          end
      else
         puts pin_error 
      end      
   end
   
   def deposit(pin_number, amount)
       if pin_number == pin
          @balance += amount
          puts "Deposited #{amount}. New balance: $#{balance}."
      else
         puts pin_error 
      end      
   end
   
   private
   def pin
    @pin = 1234
   end
   
   def pin_error
      return "Access denied: incorrect PIN." 
   end
   
   def overdraw_error
      return "Withdrawal denied: You requested more funds than currently have." 
   end
end

checking_account = Account.new("mine", 4200)
checking_account.withdraw(1234, 5000)