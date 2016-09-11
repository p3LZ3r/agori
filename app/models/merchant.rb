class Merchant < User

  def initialize(args)
    super(args)
    self.type = "merchant"
  end

  def self.model_name
    User.model_name
  end
end
