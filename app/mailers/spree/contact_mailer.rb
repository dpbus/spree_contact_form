class Spree::ContactMailer < ActionMailer::Base
  default from: "info@isabellarosedesigns.com"
  
  def message_from_visitor(contact_message)
    @name = contact_message.name
    @email = contact_message.email
    @message = contact_message.message
    mail(:to => "dpbusse@gmail.com", 
         :from => "info@isabellarosedesigns.com",
         :subject => "[CONTACT] Message from vistor - #{@name}")
  end
  
  def tell_a_friend(from, to, product)
     @subject = "Found something you'll love at isabellarosedesigns.com"
     @body = {"product" => product, "to" => to, "from" => from }
     @recipients = to
     @from = from
     @sent_on = Time.now
   end
end
