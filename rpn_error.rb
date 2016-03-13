class RPNError < StandardError
  def initialize(msg="Your postfix equation is invalid.")
    super
  end
end
