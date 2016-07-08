class Definition
  @@definition = []

  define_method(:initialize) do |definition_string|
    @definition_string = definition_string
  end

  define_method(:definition_string) do
    @definition_string
  end

  define_singleton_method(:all) do
    @@definition
  end
end
