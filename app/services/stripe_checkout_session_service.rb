class StripeCheckoutSessionService
  def call(event)
    #find the sprecific order
    order = Order.find_by(checkout_session_id: event.data.object.id)
    #update the order
    order.update(state: 'paid')
  end
end
