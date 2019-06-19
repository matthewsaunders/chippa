class EmailValidator < ActiveModel::Validator
  def validate(record)
    if record.email.present? && !URI::MailTo::EMAIL_REGEXP.match?(record.email)
      record.errors.add(:email, 'must be valid')
    end
  end
end
