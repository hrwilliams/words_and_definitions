require('rspec')
require('word')

describe(Word) do

  describe('#word_string') do
    it("returns the word string for the word") do
      test_word = Word.new("trill")
      expect(test_word.word_string()).to(eq("trill"))
    end
  end
end
