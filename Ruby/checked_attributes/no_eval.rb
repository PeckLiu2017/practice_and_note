# def add_checked_attribute(clazz, attribute)
#   clazz.class_eval do
#     # ...
#   end
# end

def add_checked_attribute(clazz, attribute)
  clazz.class_eval do
    define_method "#{attribute}=" do |value|
      raise 'Invalid attribute' unless value
      instance_variable_set("@#{attribute}", value)
    end
    define_method attribute do
      instance_variable_get "@#{attribute}" 
    end
  end
end
