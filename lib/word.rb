class Word
  define_method(:initialize) do |word_string|
    @word_string = word_string
  end

  define_method(:word_string) do
    @word_string
  end

end
