class Merchant < User
  def self.model_name
    User.model_name
  end

  def get_type
    return "merchant"
  end
end
