class Word
  @@words = []


  define_method(:initialize) do |word_string|
    @word_string = word_string
    @id = @@words.length().+(1)
    @word_definitions = []
  end

  define_method(:word_string) do
    @word_string

  end

  define_method(:id) do
    @id
  end

  define_method(:word_definitions) do
    @word_definitions
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@words.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end

  define_method(:add_definition) do |definition|
    @word_definitions.push(definition)
  end

end
