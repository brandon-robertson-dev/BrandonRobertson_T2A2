class PaymentsController < ApplicationController
    before_action :authenticate_user!, only: [:success]
    
    def success
        pp params
        purchase = Cheese.find(params[:cheeseId])
        purchase.availability -= 1
        purchase.save
        @cheese = Cheese.find(params[:cheeseId])
        @order = Order.new
        @order.user = current_user
        @order.cheese = @cheese
        @order.cheese_title = @cheese.name
        @order.cheese_price = @cheese.price
        @order.shipping_address = current_user.street_address
        @order.store_id = @cheese.store_id

        @order.save

        redirect_to nailed_it_path
    end

    def successful_payment_landing
    end

    def webhook
        payment_id= params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        cheese_id = payment.metadata.listing_id
        user_id = payment.metadata.user_id

        p "cheese id " + cheese_id
        p "user id " + user_id

        head 200
    end
end