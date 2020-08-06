class FeedbacksController < ApplicationController
    before_action :set_feedback, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:edit, :update, :destroy]

    def new
        p params
        @user = current_user.id
        @store = params[:store_id]
        @feedback = Feedback.new
        p params
    end

    def all_store
        @store = Store.find(params[:store_id])
        @user = User.all
        @feedback = Feedback.find(params[:store_id])
    end

    def create
        p "POOPY PANTS"
        p feedback_params
        @feedback = Feedback.create(feedback_params)
        p "SILLY PANTS"
        p feedback_params
        p @feedback
        @feedback.save
        redirect_to store_path(feedback_params[:store_id])
    end

    private

    def set_feedback
        @feedback = Feedback.find(params[:id])
    end

    def feedback_params
        params.require(:feedback).permit(:comment, :user_id, :store_id)
    end
end
