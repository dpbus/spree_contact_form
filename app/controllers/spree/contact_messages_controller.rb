class Spree::ContactMessagesController < Spree::BaseController
  def new
    @contact_message = Spree::ContactMessage.new
  end
  
  def create
    @contact_message = Spree::ContactMessage.new(params["contact_message"])
   
    ContactMailer.message_from_visitor(@contact_message).deliver
    redirect_to root_url
  end
end
