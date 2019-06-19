class CreateMediaLists < ActiveRecord::Migration[5.2]
  def change
    create_table :media_lists do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :media_lists_members, id: false do |t|
      t.belongs_to :media_list, index: true
      t.belongs_to :media_member, index: true
    end
  end
end
