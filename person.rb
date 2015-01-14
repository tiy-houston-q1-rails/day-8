class Person

  attr_accessor :name, :house, :castle

  def initialize(name, house, castle)
    @name = name
    @house = house
    @castle = castle
  end

  def to_s
    "#{name} of house #{house}, from #{castle}."
  end

end

people = [
  Person.new("Jaime", "Lanister", "Casterly Rock"),
  Person.new("Cerse", "Lanister", "Casterly Rock"),
  Person.new("Eddard", "Stark", "Winterfell"),
  Person.new("Catelyn", "Stark", "Winterfell"),
  Person.new("Robb", "Stark", "Winterfell"),
  Person.new("Margaery", "Tyrell", "Highgarden"),
]

# 1. Outputs "$Nam of house $House, from $Castle"
# 2. Create an array of Starks

#
# people.each do |person|
#   puts person.to_s
# end
puts people

##### passing a block to .select....
starks = people.select do |person|
  person.house == "Stark"
end
puts starks
