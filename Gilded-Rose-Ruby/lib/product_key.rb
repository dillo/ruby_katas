class ProductKey
  def initialize(name)
    @name = name
  end

  def name_to_sym
    string_array = @name.gsub(",", "").split(" ")
    final_string = string_array.join("_").downcase
    final_string.to_sym
  end
end
