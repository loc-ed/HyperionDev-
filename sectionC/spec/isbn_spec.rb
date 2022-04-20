require "isbn13"

describe IsbnChecker do

    describe "#isbn13" do 
       it 'checks for input string  ' do
            newIsbn = IsbnChecker.new
            expect(newIsbn.isbn13("")).not_to eq(0)
       end
    end
end