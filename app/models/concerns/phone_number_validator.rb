class PhoneNumberValidator < ActiveModel::Validator
  VALID_REGEX = /^(?:\+?\d{1,3}[- ]?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{2}[- ]?\d{2}$/

  def validate(record)
    if record.phone.present? && !VALID_REGEX.match?(record.phone)
      record.errors.add(:phone, 'must be valid')
    end
  end
end
