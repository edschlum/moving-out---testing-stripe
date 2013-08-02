class HomeController < ApplicationController
  def index
  	 @meubles = Meuble.limit(3).offset(0)
  	 @meubles_2 = Meuble.limit(3).offset(3)
  end
end
