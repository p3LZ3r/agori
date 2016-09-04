class Merchant < ApplicationRecord
#  attr_reader :mail, :name, :surname, :password

  def find_in_db
    other = Merchant.find_by mail: self.mail
    return false if other == nil
    return other.password == self.password
  end

  def getPw
    return self.password
  end

end
