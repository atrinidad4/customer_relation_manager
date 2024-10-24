class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A[^@\s]+@[^@\s]+\z/
      record.errors.add(attribute, :invalid, message: "is not a valid email")
    end
  end
end