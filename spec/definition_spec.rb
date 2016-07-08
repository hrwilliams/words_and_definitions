require('rspec')
require('definition')

describe('Definition') do
  before() do
    Definition.clear()
  end

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

  describe("#save") do
    it("adds a definition to the array of saved definitions") do
      test_definition = Definition.new("xxx")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end


  describe(".clear") do
    it("empties out all of the saved definitions") do
      Definition.new("xxx").save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#id') do
    it("returns the id of the definition") do
      test_definition = Definition.new("xxx")
      test_definition.save()
      expect(test_definition.id()).to(eq(1))
    end
  end
end  
