class NameFormatValidator < ActiveModel::EachValidator  
  def validate_each(object, attribute, value)  
    unless value =~ /^([ \u00c0-\u01ffa-zA-Z'\-])+$/
      object.errors[attribute] << (options[:message] || "is invalid - please only use letters, hyphens, apostrophes and spaces")  
    end  
  end  
end  