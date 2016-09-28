class Product < ApplicationRecord

private
  def get_hierarchy_type_x_names(type, x)
    ret = Array.new
    type.each do |y|
      if y.hierarchy == x
        ret.push(y.name)
      end
    end
    return ret
  end

  def get_hierarchy_type_1_names(type)
    get_hierarchy_type_x_names(type, 1)
  end

  def get_hierarchy_type_2_names(type)
    get_hierarchy_type_x_names(type, 2)
  end

  def get_hierarchy_type_3_names(type)
    get_hierarchy_type_x_names(type, 3)
  end

public
  def get_product_name_array
    pr = Product.all
    get_hierarchy_type_1_names(pr)
  end

  def get_grain_name_array
    g = Grain.all
    get_hierarchy_type_2_names(g)
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

class Grain < Product
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
