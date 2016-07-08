class Definition
  @@definitions = []

  define_method(:initialize) do |definition_string|
    @definition_string = definition_string
    @id = @@definitions.length().+(1)
  end

  define_method(:definition_string) do
    @definition_string
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

end
