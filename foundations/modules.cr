module Hardness
  def data
    {"talc" => 1, "calcite" => 3, "apatite" => 5, "corundum" => 9 }
  end

  def hardness
    data[self.name]
  end
end


class Mineral
    include Hardness
    getter name : String

    def initialize(@name)
    end
end


min = Mineral.new("corundum")
puts min.hardness