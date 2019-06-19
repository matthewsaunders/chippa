class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :address
      t.string :domain
      t.belongs_to :media_member, required: true, index: true

      t.timestamps
    end
  end
end
