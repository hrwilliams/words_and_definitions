require('rspec')
require('word')

describe(Word) do

  describe('#word_string') do
    it("returns the word string for the word") do
      test_word = Word.new("trill")
      expect(test_word.word_string()).to(eq("trill"))
    end
  end

  describe('#id') do
    it ("returns the id of the word") do
      test_word = Word.new("trill")
      expect(test_word.id()).to(eq("1"))
    end
  end

  describe('#word_definitions') do
    it("initially returns an empty array of word definitions for the word") do
      test_word = Word.new("trill")
      expect(test_word.word_definitions()).to(eq([]))
    end
  end
end
