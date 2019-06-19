class CreateMediaMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :media_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_title

      t.timestamps
    end
  end
end
