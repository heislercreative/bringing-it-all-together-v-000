class Dog
  attr_accessor :name, :breed, :id
  
  def initialize(name:, breed:, id: nil)
    @id = id
    @name = name
    @breed = breed
  end
  
  def save
    
  end
  
  def self.new_from_db(row)
    id = row[0]
    name = row[1]
    breed = row[2]
    self.new(name, breed, id)
  end
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        breed TEXT)
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
    DB[:conn].execute("DROP TABLE dogs")
  end
end