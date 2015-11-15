require './transaction'


describe 'Transaction' do

	  let(:transaction) { Transaction.new(credit_account: 500, debit_account: 500, amount: 500, time: Time.now) }

       context "#valid_account_number?" do
           it "returns true if number is Fixnum" do
               expect(transaction.valid_account_number?(500)).to eq(true)
           end
       end

       context "#valid_amount?" do
           it "returns true if number is Fixnum" do
               expect(transaction.valid_amount?(500)).to eq(true)
           end
       end

       context "#valid_time?" do
            it "returns true if valid_time" do
               expect(transaction.valid_time?   `           (Time.now)).to eq(true)
           end
       end         
end

