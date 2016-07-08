require('rspec')
require('definition')

describe('Definition') do

  describe("#definition_string") do
    it ("returns the string of the definition")do
      test_definition = Definition.new("xxx")
      expect(test_definition.definition_string()).to(eq("xxx"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end

end
