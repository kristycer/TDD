require 'bank_account'

describe BankAccount do 
    it 'can create an instance of banka ccount' do
        bank_account = BankAccount.new
        expect(bank_account). to be_instance_of(BankAccount)
    end 
# As a user I want to be able to see my balance
    it 'can respond to balance' do
    bank_account = BankAccount.new   
    expect(bank_account).to respond_to(:balance)
    end 

    it 'shouls show a zero balance to start with' do
    bank_account = BankAccount.new
    expect(bank_account.balance).to eq(0)
    end 
# As a user I would like to be able to deposit money into my bank account
    it 'should respond to deposit method' do
    bank_account = BankAccount.new
    expect(bank_account).to respond_to(:deposit).with(1).argument
    end 
    it 'should update the bank account balance when deposit is called' do
      bank_account = BankAccount.new
      bank_account.deposit(10)  
      expect(bank_account.balance). to eq(10)
    end 
# As a user I would like to be able to withdraw money from my bank account
    it 'should respond to withdraw method' do 
    bank_account = BankAccount.new
    expect(bank_account).to respond_to(:withdraw).with(1).argument
    end 
    it "should withdraw money" do
    bank_account = BankAccount.new
    bank_account.deposit(10)
    bank_account.withdraw(4)
    expect(bank_account.balance).to eq (6)
    end 

end 

