# == Schema Information
#
# Table name: tags
#
#  id          :bigint(8)        not null, primary key
#  color       :string
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tag < ApplicationRecord

  # validations
  validates :name,
    presence: true,
    uniqueness: true
  validates :color,
    presence: true,
    format: {
      with: /#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})/,
      message: 'invalid hexidecimal color'
    }

  # associations
  has_and_belongs_to_many :media_lists

  def text_color
    color.gsub('#', '0x').to_i(16)  > (0xffffff/2) ? '#333' : '#fff'
  end
end
