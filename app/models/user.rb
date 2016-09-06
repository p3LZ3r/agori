class User < ApplicationRecord
#  attr_reader :mail, :name, :surname, :password

  def find_in_db
    other = User.find_by(email: self.email)
    p "hi"
    return false if other == nil
    p "huhu"
    p other.password
    p self.password
    return other.password == self.password
  end

  def get_email
    p "TESTST"
    p self.email
    self.email
  end

end
