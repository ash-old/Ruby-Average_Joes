require_relative('../db/sql_runner')

class GymClass

  attr_reader :id
  attr_accessor :gym_class_type, :class_time

def initialize(options)
  @id = options['id'].to_i if options['id']
  @gym_class_type = options['gym_class_type']
  @class_time = options['class_time']
end

def save()
  sql = "INSERT INTO gym_classes (gym_class_type, class_time) VALUES ($1,$2) RETURNING id"
  values = [@gym_class_type, @class_time]
  gym_class = SqlRunner.run(sql, values).first
  @id = gym_class['id'].to_i
end

def delete()
  sql = "DELETE FROM gym_classes WHERE id = $1"
  values = [@id]
  SqlRunner.run(sql, values)
end

def update()
  sql = "UPDATE gym_classes SET (gym_class_type, class_time) = ($1,$2) WHERE id = $3"
  values = [@gym_class_type, @class_time, @id]
  SqlRunner.run(sql, values)
end

def self.find(id)
  sql = "SELECT * FROM gym_classes WHERE id = $1"
  values = [id]
  gym_class = SqlRunner.run(sql, values)
  result = GymClass.new(gym_class.first)
  return result
end

def self.all()
  sql = "SELECT * FROM gym_classes"
  gym_classes = SqlRunner.run(sql)
  result = gym_classes.map { |gym_class| GymClass.new(gym_class) }
  return result
end

def self.delete_all()
  sql = "DELETE FROM gym_classes"
  SqlRunner.run(sql)
end

end
