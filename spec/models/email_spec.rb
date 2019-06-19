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

require 'rails_helper'

RSpec.describe Email, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
