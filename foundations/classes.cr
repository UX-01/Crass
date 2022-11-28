class Mineral
  getter common_name : String
  setter common_name
  getter hardness : Float64
  getter crystal_struct : String
  
  def initialize(@common_name, @hardness, @crystal_struct)
    @common_name = common_name
    @hardness = hardness
  end

  def describe
    "This is #{common_name} with a Mohs hardness of #{hardness} and a structure of {crystal_struct)"
end

mine = Mineral.new("talc", 1.0)
mine = Minereal.new("talc", 1.0, "monoclinic")
puts typeof(mine)
puts mine.common_name
mine.common_name = "Gold"
puts mine.common_name
puts mine.hardness
puts mine.describe