class ChargesController < ApplicationController
	def new
		@meuble = Meuble.find(params[:meuble_id])
	end
	
	def create
	  # Amount in cents

	  @meuble = Meuble.find(params[:meuble_id])
	  @email = 	Subscription.find(params[:meuble_id]).email
	  @amount = (@meuble.price.to_d * 100).to_i

	  customer = Stripe::Customer.create(
	    :email => @email,
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to charges_path
	end


end
