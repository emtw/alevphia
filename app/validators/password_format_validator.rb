class PasswordFormatValidator < ActiveModel::EachValidator  
  def validate_each(object, attribute, value)  
    unless value =~ /^[a-zA-Z]\w{5,29}$/  
      object.errors[attribute] << (options[:message] || "should be between 6-30 characters long and contain letters, numbers or underscores. It must start with a letter.")  
    end  
  end  
end  