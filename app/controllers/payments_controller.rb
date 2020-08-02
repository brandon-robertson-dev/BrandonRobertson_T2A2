class PaymentsController < ApplicationController
    def success
        purchase = Cheese.find(params[:cheeseId])
        purchase.availability -= 1
        purchase.save
    end
end