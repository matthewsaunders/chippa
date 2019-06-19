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

class MediaList < ApplicationRecord

  # associations
  has_and_belongs_to_many :media_members
  has_and_belongs_to_many :tags
end
