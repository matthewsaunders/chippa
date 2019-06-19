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

require 'rails_helper'

RSpec.describe MediaMember, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
