class Spree::ContactMessage
  include ActiveModel::Validations
  include ActiveModel::Conversion
  
  attr_accessor :name, :email, :message
  
  def initialize(attributes = nil)
    unless attributes.nil?
      @name = attributes['name'] if attributes['name']
      @email = attributes['email'] if attributes['email']
      @message = attributes['message'] if attributes['message']
    end
  end
  
  def persisted?
    false
  end
end
