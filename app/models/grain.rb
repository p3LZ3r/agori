class Grain < ApplicationRecord
  def get_name
    return Grain.find_by(hierarhcy: 1).name
  end

  def get_grain_type_name_array
    x = Grain.where(hierarchy: 2).all
    ret = Array.new
    x.each do |y|
      ret.push(y.name)
    end
    return ret
  end

  def get_hierarchy_type_3_names(type)
    ret = Array.new
    type.each do |x|
      if x.hierarchy == 3
        ret.push(x.name)
      end
    end
    return ret
  end

  def get_wheat_name_array
    w = Wheat.all
    get_hierarchy_type_3_names(w)
  end

  def get_barley_name_array
    b = Barley.all
    get_hierarchy_type_3_names(b)
  end

  def get_rey_name_array
    r = Rey.all
    get_hierarchy_type_3_names(r)
  end
end

class Wheat < Grain
end

class Rye < Grain
end

class Barley < Grain
end

class FodderWheat < Wheat
end

class BreadWheat < Wheat
end

class FodderRye < Rye
end

class BreadRye < Rye
end

class FodderBarley < Barley
end

class MaltingBarley < Barley
end
