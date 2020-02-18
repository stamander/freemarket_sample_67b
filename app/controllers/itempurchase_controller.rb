class ItempurchaseController < ApplicationController
  require "payjp"
  
  def index
  end

  def new
    @card = Card.where(furimauser_id: current_furimauser.id).first if Card.where(furimauser_id: current_furimauser.id).present?
    if @card.blank?
      redirect_to edit_card_path(current_furimauser.id)
    else 
    @item = Item.find(1)
    @image = Image.find(1)
    Payjp.api_key = "sk_test_ceb74bf1068e640ddcefbfe2"
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
    end
  end

  def pay
    @item = Item.find(1)
    @card = Card.where(furimauser_id: current_furimauser.id).first if Card.where(furimauser_id: current_furimauser.id).present?
    Payjp.api_key = "sk_test_ceb74bf1068e640ddcefbfe2"
    Payjp::Charge.create(
      currency: 'jpy', 
      amount: @item.price, 
      card: params['payjp-token'],
      customer: @card.customer_id
      )
    redirect_to action: 'done'
  end

  def done
    @item = Item.find(1)
    @image = Image.find(1)
  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :price,
    )
  end
end
