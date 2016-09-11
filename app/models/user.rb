class User < ApplicationRecord
#  attr_reader :mail, :name, :surname, :password

  def find_type_in_db
    other = User.find_by(email: self.email)
    return false if other == nil
    if other.password != self.password
      return ""
    end
    return other.get_type
  end

  def get_email
    self.email
  end

  def get_type
    return self.type
  end

end
