class User < ApplicationRecord
#  attr_reader :mail, :name, :surname, :password

  def find_in_db
    other = User.find_by(email: self.email)
    return false if other == nil
    if other.password != self.password
      return ""
    end
    if other.merchant.to_i == 1
      return "merchant"
    elsif other.farmer.to_i == 1
      return "farmer"
    else
      return ""
    end
  end

  def get_email
    self.email
  end

  def get_type
    return ""
  end

end
