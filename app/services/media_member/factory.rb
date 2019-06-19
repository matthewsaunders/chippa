class MediaMember::Factory
  def self.create!(params = {})
    media_member = nil

    ActiveRecord::Base.transaction do
      media_member = MediaMember.create(media_member_params(params))

      if email_params_present?(params)
        emails = Email::Factory.create!(
          media_member: media_member,
          emails: params[:media_member][:emails]
        )
      end
    end

    media_member
  end

  def self.create_associated_emails(media_member, params)
    existing_emails = media_member.emails_addresses
    email_params(params).each do |ep|
      Email::Factory.create(ep) unless existing_emails.include? ep[:address]
    end
  end

  def self.media_member_params(params)
    params.require(:media_member).permit(:first_name, :last_name, :job_title)
  end

  def self.email_params(params)
    return [] unless email_params_present?(params)
    params.require(:media_member).permit(emails: [:address])[:emails]
  end

  def self.email_params_present?(params)
    params && params[:media_member] && params[:media_member][:emails]
  end
end
