class Spree::ContactMailer < ActionMailer::Base
  default from: "from@example.com"
  def confirm_email(order, resend=false)
    @order = order
    subject = (resend ? "[#{t(:resend).upcase}] " : "")
    subject += "#{Spree::Config[:site_name]} #{t('order_mailer.confirm_email.subject')} ##{order.number}"
    mail(:to => order.email,
         :subject => subject)
  end
  
  def message_from_visitor(name, email, message)
    @subject = "[CONTACT] Message from vistor - #{name}"
    @body = {"message" => message, "name" => name, "email" => email}
    @recipients = "info@isabellarosedesigns.com"
    @from = "info@isabellarosedesigns.com"
    @sent_on = Time.now
  end
  
  def tell_a_friend(from, to, product)
     @subject = "Found something you'll love at isabellarosedesigns.com"
     @body = {"product" => product, "to" => to, "from" => from }
     @recipients = to
     @from = from
     @sent_on = Time.now
   end
end
