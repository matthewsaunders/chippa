class CreateMediaListsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :media_lists_tags do |t|
      t.belongs_to :media_list, index: true
      t.belongs_to :tag, index: true
    end
  end
end
