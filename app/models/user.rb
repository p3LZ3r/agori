class User < ApplicationRecord
#  attr_reader :mail, :name, :surname, :password

  def find_in_db
    other = User.find_by(email: self.email)
    return false if other == nil
    return other.password == self.password
  end

  def get_email
    self.email
  end

end
