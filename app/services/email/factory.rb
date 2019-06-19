class Email::Factory
  def self.create!(params = {})
    return [] unless params[:emails]

    new_emails = []
    media_member = params[:media_member]
    existing_emails = media_member.email_addresses

    params[:emails].each do |_index, email|
      next if existing_emails.include?(email[:address])
      new_emails << Email.create(
        address: email[:address],
        domain: email_domain(email[:address]),
        media_member: media_member
      )
      existing_emails << email[:address]
    end

    new_emails
  end

  def self.email_domain(address)
    return nil unless address
    address.split('@').last
  end
end
