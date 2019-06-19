# == Schema Information
#
# Table name: media_members
#
#  id         :bigint(8)        not null, primary key
#  first_name :string
#  job_title  :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MediaMember < ApplicationRecord

  # associations
  has_many :emails
  has_and_belongs_to_many :media_lists

  # validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_with EmailValidator
  validates_with PhoneNumberValidator

  def full_name
    "#{first_name} #{last_name}".strip
  end

  def email_addresses
    emails.map(&:address)
  end
end
