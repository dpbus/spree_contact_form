class Spree::ContactMessage
  include ActiveModel::Validations
  include ActiveModel::Conversion
  
  attr_accessor :name, :email, :message
  
  def persisted?
    false
  end
end
