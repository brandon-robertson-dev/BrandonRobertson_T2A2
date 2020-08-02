class PagesController < ApplicationController
    def index
        @latest = Cheese.last(10)
        @store = Store.all
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