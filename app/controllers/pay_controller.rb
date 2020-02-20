class PayController < ApplicationController


  def show
    @card = Card.find_by(furimauser_id: current_furimauser.id) if Card.where(furimauser_id: current_furimauser.id).present?
    @item = Item.find(params[:id])
    Payjp::Charge.create(
      currency: 'jpy', 
      amount: @item.price, 
      card: params['payjp-token'],
      customer: @card.customer_id
      )
      @item.update(buyer_id: current_furimauser.id)
    redirect_to root_path
  end

end
