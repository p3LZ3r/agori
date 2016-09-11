class Farmer < User

  def initialize(args)
    super(args)
    self.type = "farmer"
  end

  def self.model_name
    User.model_name
  end

end
