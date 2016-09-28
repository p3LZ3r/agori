class Merchant < User

  def initialize(args)
    super(args)
  end

  def self.model_name
    User.model_name
  end
end
