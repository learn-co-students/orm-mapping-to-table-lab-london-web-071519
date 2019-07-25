class Student

  attr_reader :id
  attr_accessor :name, :grade

  
  
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  

  def initialize(id = nil, name, grade)
    @id = id
    @name = name
    @grade = grade
  end

  def self.create_table
    sql = <<-SQL
      create table if not exists students (
        id integer primary key,
        name text
        grade integer
      )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
      drop table students
    SQL
    DB[:conn].execute(sql)
  end
  
  
end
