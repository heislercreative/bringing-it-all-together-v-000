def Dog
  attr_accessor :name, :breed
  attr_writer :id
  
  def initialize(name:, breed:, id: nil)
    @id = id
    @name = name
    @breed = breed
  end
end