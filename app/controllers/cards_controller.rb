class CardsController < ApplicationController
  require "payjp"
  before_action :set_card
  before_action :get_payjp_info, only: [:new_create, :create, :destroy, :show]

  def new
  end

  def edit
    redirect_to card_path if @card.present?
  end

  def create
    if params['payjp-token'].blank?
      render action: "edit", id: current_furimauser.id
    else
      customer = Payjp::Customer.create(
        email: current_furimauser.email,
        card: params['payjp-token'],
        metadata: {furimauser_id: current_furimauser.id}
      )
      @card = Card.new(furimauser_id: current_furimauser.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to card_path(current_furimauser.id)
      else

        redirect_to action: "edit", id: current_furimauser.id
      end
    end
  end

  def destroy
    customer = Payjp::Customer.retrieve(@card.customer_id)
    customer.delete
    if @card.destroy 
      redirect_to card_path, id: current_furimauser.id, notice: "削除しました"
    end
  end

  def show
    @user = current_furimauser
    if @card.present?
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @card_information = customer.cards.retrieve(@card.card_id)
      @card_brand = @card_information.brand      
      case @card_brand
      when "Visa"
        @card_src = "icon_visa.png"
      when "JCB"
        @card_src = "icon_jcb.png"
      when "MasterCard"
        @card_src = "icon_mastercard.png"
      when "American Express"
        @card_src = "icon_americanexpress.png"
      when "Diners Club"
        @card_src = "icon_dinersclub.png"
      when "Discover"
        @card_src = "icon_discover.png"
      end
    else
      redirect_to confirmation_cards_path
    end
  end

  def confirmation

  end

  private

  def get_payjp_info
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
  end

  def set_card
    @card = Card.find_by(furimauser_id: current_furimauser.id) if Card.where(furimauser_id: current_furimauser.id).present?
  end

  def get_user_params
    params.require(:furimauser).permit(:email)
  end


end
