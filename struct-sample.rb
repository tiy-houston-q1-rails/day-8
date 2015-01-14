class Person

  attr_accessor :name, :house, :castle

  def initialize(name, house, castle)
    @name = name
    @house = house
    @castle = castle
  end

end

# define some data, with name, house, castle

Person = Struct.new(:name, :house, :castle)


PaymentDashboard = Struct.new(:user, :payments, :date_start, :date_end)
user = User.find_by email: "jwo@example.com"
payments = Payment.for_user(user)
payment_dashboard = PaymentDashboard.new(user, payments, date_start, date_end)

list(payment_dashboard)


def list_payments(payment_dashboard)

  payment_dashboard.payments.each do |payment|
    puts payment.whatevs
  end
end
