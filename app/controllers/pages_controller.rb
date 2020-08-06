class PagesController < ApplicationController
    before_action :authenticate_user!, only: [:account, :my_orders]

    def index
        @latest = Cheese.last(10)
        @store = Store.all
    end

    def my_orders
        @orders = Order.where(user:current_user)
    end

    def account
        @stores = Store.all
    end

    def not_found
    end

    def contact
    end

    def explore
    end
end