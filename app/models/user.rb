class User < ApplicationRecord

  def initialize(args)
    super(args)
  end

  def find_type_in_db
    other = User.find_by(email: self.email)
    return false if other == nil
    if other.password != self.password
      return ""
    end
    self.username = other.username
    self.type = other.get_type
    return other.get_type
  end

  def get_email
    self.email
  end

  def get_type
    return self.type
  end

  def get_username
    return self.username
  end

end
