class CheesesController < ApplicationController
  before_action :set_cheese, only: [:show, :edit, :update, :destroy]

  # GET /cheeses
  # GET /cheeses.json
  def index
    @cheeses = Cheese.all
    @store = Store.all
  end

  # GET /cheeses/1
  # GET /cheeses/1.json
  def show
    @store = Store.all
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.email,
      line_items: [{
      name: @cheese.name,
      description: @cheese.description,
      amount: @cheese.price * 100,
      currency: 'aud',
      quantity: 1,
      }],
      payment_intent_data: {
      metadata: {
      user_id: current_user.id,
      listing_id: @cheese.id
      }
      },
      success_url: "#{root_url}payments/success?userId=#{current_user.id}&cheeseId=#{@cheese.id}",
      cancel_url: "#{root_url}cheese"
      )

    @session_id = session.id
  end

  # GET /cheeses/new
  def new
    @cheese = Cheese.new
    @store = params[:store_id]
  end

  # GET /cheeses/1/edit
  def edit
    @store = params[:store_id]
  end

  # POST /cheeses
  # POST /cheeses.json
  def create
    @cheese = Cheese.new(cheese_params)

    respond_to do |format|
      if @cheese.save
        format.html { redirect_to @cheese, notice: 'Cheese was successfully created.' }
        format.json { render :show, status: :created, location: @cheese }
      else
        format.html { render :new }
        format.json { render json: @cheese.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cheeses/1
  # PATCH/PUT /cheeses/1.json
  def update
    @store = params[:store_id]
    respond_to do |format|
      if @cheese.update(cheese_params)
        format.html { redirect_to @cheese, notice: 'Cheese was successfully updated.' }
        format.json { render :show, status: :ok, location: @cheese }
      else
        format.html { render :edit }
        format.json { render json: @cheese.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cheeses/1
  # DELETE /cheeses/1.json
  def destroy
    @cheese.destroy
    respond_to do |format|
      format.html { redirect_to cheeses_url, notice: 'Cheese was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cheese
      @cheese = Cheese.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cheese_params
      params.require(:cheese).permit(:name, :description, :price, :rennet_coagulat, :location, :cheese_type, :rind, :milk, :size, :availability, :store_id, :item_picture)
    end
end
