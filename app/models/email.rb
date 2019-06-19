# == Schema Information
#
# Table name: emails
#
#  id              :bigint(8)        not null, primary key
#  address         :string
#  domain          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  media_member_id :bigint(8)
#
# Indexes
#
#  index_emails_on_media_member_id  (media_member_id)
#

class Email < ApplicationRecord
  # associations
  belongs_to :media_member
end
