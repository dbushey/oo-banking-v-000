class Transfer
  attr_accessor :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    (sender.status == "open" && sender.balance > 0) && (receiver.status == "open" && receiver.balance > 0)
  end



end
