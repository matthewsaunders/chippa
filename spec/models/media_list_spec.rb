# == Schema Information
#
# Table name: media_lists
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe MediaList, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
