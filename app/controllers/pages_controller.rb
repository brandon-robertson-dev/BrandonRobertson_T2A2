class PagesController < ApplicationController
    def index
        @latest = Cheese.last(10)
        @store = Store.all
    end

    def not_found
    end
end