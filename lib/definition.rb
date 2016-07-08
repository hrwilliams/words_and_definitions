class Definition
  define_method(:initialize) do |definition_string|
    @definition_string = definition_string
    end

  define_method(:definition_string) do
    @definition_string
  end
end
