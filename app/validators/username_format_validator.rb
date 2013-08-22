class UsernameFormatValidator < ActiveModel::EachValidator  
  def validate_each(object, attribute, value)  
    unless value =~ /^[a-zA-Z0-9_-]{4,15}$/
      object.errors[attribute] << (options[:message] || " is not valid - please only use letters, numbers, underscores and hyphens")  
    end  
  end  
end  