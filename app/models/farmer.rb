class Farmer < User
  def self.model_name
    User.model_name
  end

  def get_type
    return "farmer"
  end
end
