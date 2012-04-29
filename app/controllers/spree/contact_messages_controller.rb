class Spree::ContactMessagesController < Spree::BaseController
  def new
    @contact_message = Spree::ContactMessage.new
  end
  
  def create
    
  end
end
