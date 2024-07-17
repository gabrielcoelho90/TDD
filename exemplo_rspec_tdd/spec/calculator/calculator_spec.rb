require 'calculator'

describe Calculator, "write something about the class (optional)" do
  subject(:calc) { described_class.new()} # If instead of the class, strictly speaking, I set a string describing my class,
  context 'methods for two numbers' do    # I have to replace 'described_class' for Calculator.
    it '#sum' do
      result = subject.sum(9,9)
      expect(result).to eq(18)
    end

    it '#multiply' do # if it is a class method use .method intead of #
      result = subject.multiply(-3,9)
      expect(result).to eq(-27)
    end
  end

  context 'errors' do
    it 'divide by 0' do
      expect{subject.divide(3,0)}.to raise_error(ZeroDivisionError) # If we put () as always, when the code runs, it will break inside calculator.rb, not being able to raise the error here. So that is why we use {}.
      expect{subject.divide(3,0)}.to raise_error("divided by 0")
      expect{subject.divide(3,0)}.to raise_error(ZeroDivisionError, "divided by 0")
    end
  end
end

# 1a phase (SETUP) SUT - System Under Test - object to be tested)
# 2a phase (Exercise) - When you interact with the SUT
# 3a PHASE - (Verify) - Verify the expected behavior
# 4a Phase - (Teardown - Rspec does it auto) - teardown is a process used to clean
# up after tests have run. This ensures that the test environment is reset for the next test,
#preventing tests from affecting each other
# ---------------------------------------------------------------------------------------------

# Because I am describing a class, it's not necessary create a instance of Calculator,
# we just need to replace 'calc' for 'subject' or the way it is now.

# subject(:calc) { described_class.new()} => subject = Calculator.new()

# --------------------------------------------------------------------------------------------

# xit - is used to make our test pending
# if we want to run a specific test inside a spec file, we can use -e titulo_do_teste
# example: rspec spec/calculator/calculator.rb -e '#multiply'
